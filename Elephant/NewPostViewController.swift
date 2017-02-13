//
//  NewPostViewController.swift
//  Elephant
//
//  Created by David Mattia on 1/24/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//

import UIKit
import Material
import SCLAlertView
import Iconic

class NewPostViewController: UIViewController {
    
    @IBOutlet weak var titleField: TextField!
    @IBOutlet weak var contentView: TextView!
    @IBOutlet weak var categoryField: TextField!
    
    fileprivate var cancelButton: IconButton!
    fileprivate var submitButton: IconButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contentView.backgroundColor = Material.Color.blue.lighten5
        self.contentView.textColor = Material.Color.blue.base
        
        self.prepareButtons()
        self.prepareNavigationItem()
    }
}

// View
extension NewPostViewController {
    fileprivate func prepareButtons() {
        cancelButton = IconButton(image: Icon.cm.clear)
        cancelButton.addTarget(self, action: #selector(cancelTapped(_:)), for: .touchUpInside)
        
        submitButton = IconButton(image: Icon.cm.check)
        submitButton.addTarget(self, action: #selector(submitTapped(_:)), for: .touchUpInside)
    }
    
    fileprivate func prepareNavigationItem() {
        navigationItem.title = "Elephant"
        navigationItem.titleLabel.font = UIFont(name: "Savoye Let", size: 24)
        navigationItem.titleLabel.textColor = Color.blue.base
        navigationItem.detail = "Create Post"
        navigationItem.leftViews = [cancelButton]
        navigationItem.rightViews = [submitButton]
    }
}

// Updates
extension NewPostViewController {
    func cancelTapped(_ sender: IconButton!) {
        // TODO: send a pull request to Material so that future people can just run
        // self.pageTabBarController?.selectedIndex = 0.
        self.pageTabBarController?.pageTabBar.buttons[0].sendActions(for: .touchUpInside)
    }
    
    func submitTapped(_ sender: IconButton!) {
        print("Submit tapped")
        let post = Post(title: titleField.text!, content: contentView.text, userId: UIDevice.current.identifierForVendor!.uuidString, category: categoryField.text!)
        post.push()
        SCLAlertView().showInfo("Post Published", subTitle: "Thank you, your post has been published!").setDismissBlock {
            self.titleField.text = ""
            self.contentView.text = ""
            self.categoryField.text = ""
            
            self.pageTabBarController?.pageTabBar.buttons[0].sendActions(for: .touchUpInside)
        }
    }
}
