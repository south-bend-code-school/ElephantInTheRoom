//
//  Post.swift
//  Elephant
//
//  Created by David Mattia on 1/24/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//

import Firebase

let iconCount = 8
let iconColors = [
    "blue",
    "red",
    "pink",
    "orange",
    "green",
    "gray"
]

class Comment {
    internal var id : String?
    internal var text : String?
    internal var time : NSDate?
    internal var userId : String?
    internal var post: Post!
    
    init(text: String, userId: String, post: Post) {
        self.id = "0"
        self.time = NSDate()
        self.text = text
        self.userId = userId
        self.post = post
    }
    
    init(snapshot: FIRDataSnapshot, post: Post) {
        guard let value = snapshot.value as? NSDictionary else {
            return
        }
        
        self.id = snapshot.key
        self.text = value["comment"] as? String
        self.userId = value["userId"] as? String

        if let time = value["time"] as? Double {
            self.time = NSDate(timeIntervalSince1970: time)
        }
        
        self.post = post
    }
    
    func icon(ofSize size: CGSize) -> UIImage {
        // check if op
        if self.userId == self.post.userId {
            return self.post.icon(ofSize: size)
        }
        
        // check if this user already commented on this post
        var i = 0
        var comment = self.post.comments[0]
        while i < self.post.comments.count && comment.id != self.id {
            if comment.userId == self.userId {
                return comment.icon(ofSize: size)
            }
            i += 1
            comment = self.post.comments[i]
        }
 
        let color = iconColors[Int(self.time!.timeIntervalSince1970) % iconColors.count]
        var logoHash = "\(self.text!)\(self.userId!)".hashValue
        // abs() uses int32 for some annoying reason
        if logoHash < 0 {
            logoHash *= -1
        }
        let image_index = (logoHash % iconCount) + 1
        
        
        let imageName = "logo\(image_index)\(color)"
        return (UIImage(named: imageName)!.resize(toWidth: size.width)?.resize(toHeight: size.height))!
    }
}

class Post {
    internal var title : String?
    internal var content : String?
    internal var userId : String?
    internal var category : String?
    internal var time: NSDate?
    internal var id: String?
    internal var comments: [Comment]!
    var onCommentAdded: ((_ comment: Comment) -> ())?
    
    init(title: String, content: String, userId: String, category: String) {
        self.title = title
        self.content = content
        self.userId = userId
        self.category = category
        self.time = NSDate()
        self.comments = []
    }
    
    init(snapshot: FIRDataSnapshot) {
        guard let value = snapshot.value as? NSDictionary else {
            return
        }

        self.id = snapshot.key
        self.title = value["title"] as? String
        self.content = value["content"] as? String
        self.userId = value["posterId"] as? String
        self.category = value["category"] as? String
        self.comments = []
        
        FIRDatabase.database().reference()
            .child("posts")
            .child(snapshot.key)
            .child("comments")
            .observe(FIRDataEventType.childAdded, with: {
                (snapshot) in
                let comment = Comment(snapshot: snapshot, post: self)
                self.comments?.append(comment)
                self.onCommentAdded?(comment)
            })
        
        if let time = value["time"] as? Double {
            self.time = NSDate(timeIntervalSince1970: time)
        }
        
        print("Created Post with content \(self.content)")
    }
    
    func push() {
        FIRDatabase.database().reference().child("posts")
            .childByAutoId().setValue([
               "content": self.content,
               "posterId": self.userId,
               "category": self.category,
               "title": self.title,
               "time": NSDate().timeIntervalSince1970
            ])
    }
    
    func delete() {
        FIRDatabase.database().reference()
            .child("posts")
            .child(self.id!)
            .removeValue()
    }
    
    func addComment(withText commentText: String) {
        FIRDatabase.database().reference()
            .child("posts")
            .child(self.id!)
            .child("comments")
            .childByAutoId()
            .setValue([
                "comment": commentText,
                "userId":  UIDevice.current.identifierForVendor!.uuidString,
                "time": NSDate().timeIntervalSince1970
                ])
    }
    
    func icon(ofSize size: CGSize) -> UIImage {
        let color = iconColors[Int(self.time!.timeIntervalSince1970) % iconColors.count]
        let logoHash = abs((self.content!.hashValue + self.userId!.hashValue) % iconCount) + 1
        return (UIImage(named: "logo\(logoHash)\(color)")!.resize(toWidth: size.width)?.resize(toHeight: size.height))!
    }
    
    func timeString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        
        return formatter.string(from: self.time as! Date)
    }
}
