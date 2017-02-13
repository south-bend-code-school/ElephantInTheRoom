//
//  Post.swift
//  Elephant
//
//  Created by David Mattia on 1/24/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//

import Firebase

class Post {
    internal var title : String?
    internal var content : String?
    internal var userId : String?
    internal var category : String?
    internal var time: NSDate?
    internal var id: String?
    internal var comments: [String]!
    var onCommentAdded: ((_ comment: String) -> ())?
    
    let iconCount = 8
    let iconColors = [
        "blue",
        "red",
        "pink",
        "orange",
        "green",
        "gray"
    ]
    
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
                self.comments?.append(snapshot.value as! String)
                self.onCommentAdded?(snapshot.value as! String)
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
    
    func addComment(withText commentText: String) {
        FIRDatabase.database().reference()
            .child("posts")
            .child(self.id!)
            .child("comments")
            .childByAutoId()
            .setValue(commentText)
    }
    
    func icon(ofSize size: CGSize) -> UIImage {
        let color = self.iconColors[Int(self.time!.timeIntervalSince1970) % self.iconColors.count]
        let logoHash = abs(self.content!.hashValue % self.iconCount)
        return (UIImage(named: "logo\(logoHash)\(color)")!.resize(toWidth: size.width)?.resize(toHeight: size.height))!
    }
    
    func timeString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        
        return formatter.string(from: self.time as! Date)
    }
}
