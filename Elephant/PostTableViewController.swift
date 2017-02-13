//
//  PostTableViewController.swift
//  Elephant
//
//  Created by David Mattia on 1/24/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//

import UIKit
import Iconic
import Firebase
import Material

class PostTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var ref: FIRDatabaseReference!
    var posts: [Post]!
    var filteredPosts: [Post]!
    var filterText: String?
    var filterByThisUser: Bool = false
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.posts = []
        self.filteredPosts = []
        self.filterText = ""
        
        self.ref = FIRDatabase.database().reference().child("posts")

        ref.observe(FIRDataEventType.childAdded, with: {
            snapshot in
            let post = Post(snapshot: snapshot)
            post.onCommentAdded = {
                comment in
                self.reload()
            }
            self.posts.insert(post, at: 0)
            
            self.reload()
        })
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.allowsMultipleSelectionDuringEditing = false;
    }
    
    func setShouldFilterByUser(shouldFilter: Bool) {
        self.filterByThisUser = shouldFilter
    }
    
    func reload() {
        self.filteredPosts = self.posts.filter({
            post in
            
            if filterByThisUser && post.userId != UIDevice.current.identifierForVendor!.uuidString {
                return false
            }
            
            guard let text = self.filterText else {
                return true
            }
            
            guard let title = post.title else {
                return false
            }
            
            guard let category = post.category else {
                return false
            }
            
            guard let content = post.content else {
                return false
            }
            
            if text.characters.count == 0 {
                return true
            }
            
            if title.contains(text) || content.contains(text) || category.contains(text) {
                return true
            }
            
            return false
        })
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "PostsToDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? PostDetailViewController {
            destinationVC.post = self.filteredPosts[self.tableView.indexPathForSelectedRow!.row]
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        let post = self.filteredPosts[indexPath.row]
        
        cell.label.text = post.content
        cell.titleLabel.text = post.title
        cell.timeLabel.text = post.timeString()
        cell.categoryLabel.text = post.category
        if post.comments.count == 1 {
            cell.commentCount.text = "\(post.comments.count) comment"
        } else {
            cell.commentCount.text = "\(post.comments.count) comments"
        }
        
        let size = CGSize(width: 70, height: 70)
        cell.postImage.image = post.icon(ofSize: size)
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    // Filters cells that include this string
    func filterBy(text: String?) {
        self.filterText = text
        self.reload()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.posts.count)
        return self.filteredPosts.count
    }
}
