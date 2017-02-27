//
//  PostDetailViewController.swift
//  Elephant
//
//  Created by David Mattia on 2/13/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabeView: UITableView!
    @IBOutlet weak var commentTextField: UITextField!
    
    @IBAction func commentTapped(_ sender: Any) {
        if (self.commentTextField.text?.characters.count)! > 0 {
            self.post.addComment(withText: self.commentTextField.text!)
            self.commentTextField.text = ""
        }
    }
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabeView.delegate = self
        self.tabeView.dataSource = self
        
        self.tabeView.estimatedRowHeight = 80
        
        self.navigationItem.titleLabel.text = "Comments"
        
        self.post.onCommentAdded = {
            (comment) in
            self.tabeView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return self.post.comments.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return min(UITableViewAutomaticDimension, 120)
        }
        return 80
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Post"
        }
        return "Comments"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = self.tabeView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! SimplePostCell
            
            cell.contentLabel.text = post.content
            cell.titleLabe.text = post.title
            cell.imageView?.image = post.icon(ofSize: CGSize(width: 70, height: 70))
            
            return cell
        } else {
            let cell = self.tabeView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath) as! CommentCell
            
            cell.mainLabel.text = self.post.comments[indexPath.row].text
            cell.imageView?.image = self.post.comments[indexPath.row].icon(ofSize: CGSize(width: 63, height: 63))
            
            
            return cell
        }
    }
}

