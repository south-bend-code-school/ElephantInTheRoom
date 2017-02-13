//
//  ProfileViewController.swift
//  Elephant
//
//  Created by David Mattia on 1/24/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//


import UIKit
import Iconic
import Firebase
import Material

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let icons = [
        FontAwesomeIcon.glass,
        FontAwesomeIcon.laptop,
        FontAwesomeIcon.gift,
        FontAwesomeIcon.questionSign,
        FontAwesomeIcon.pencil,
        FontAwesomeIcon.bellAlt
    ]
    let colors: [UIColor] = [
        Color.lightBlue.base,
        Color.red.base,
        Color.brown.base,
        Color.green.base,
        Color.black,
        Color.orange.base,
        Color.pink.base,
        Color.grey.base
    ]
    var ref: FIRDatabaseQuery!
    var posts: [Post]!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.posts = []
        self.ref = FIRDatabase.database().reference().child("posts")//.queryOrdered(byChild: "profileId").queryEqual(toValue: "3")
        
        ref.observe(FIRDataEventType.childAdded, with: {
            snapshot in
            self.posts.append(Post(snapshot: snapshot))
            self.tableView.reloadData()
        })
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyPostCell", for: indexPath) as! PostCell
        
        print(self.posts)
        print(indexPath.row)

        let post = self.posts[indexPath.row]
        
        cell.label.text = post.content
        cell.titleLabel.text = post.title
        
        // Create icon image
        let size = CGSize(width: 70, height: 70)
        let iconIndex = abs(post.content!.hashValue % self.icons.count)
        let color = self.colors[Int(post.time!.timeIntervalSince1970) % self.colors.count]
        let icon = self.icons[iconIndex]
        let image = icon.image(ofSize: size, color: color)
        cell.postImage.image = image
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.posts.count)
        return self.posts.count
    }
}
