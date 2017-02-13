//
//  AppSearchBarController.swift
//  Elephant
//
//  Created by David Mattia on 1/26/17.
//  Copyright © 2017 south-bend-code-school. All rights reserved.
//

import Material
import SCLAlertView

class AppSearchBarController: SearchBarController, SearchBarDelegate {
    
    fileprivate var sosButton: RaisedButton!
    fileprivate var searchButton: IconButton!
    
    open override func prepare() {
        super.prepare()
        
        self.searchBar.delegate = self
        self.searchBar.textField.autocapitalizationType = .none
        
        self.prepareButtons()
        self.prepareNavigationItem()
    }
    
    func searchBar(searchBar: SearchBar, didChange textField: UITextField, with text: String?) {
        if let tableViewController = self.rootViewController as? PostTableViewController {
            tableViewController.filterBy(text: text)
        }
    }
    
    func searchBar(searchBar: SearchBar, didClear textField: UITextField, with text: String?) {
        self.hideSearch(animated: true)
    }
}

// View
extension AppSearchBarController {
    fileprivate func prepareButtons() {
        self.prepareSosButton()
        sosButton.addTarget(self, action: #selector(sosTapped(_:)), for: .touchUpInside)
        
        searchButton = IconButton(image: Icon.cm.search)
        searchButton.addTarget(self, action: #selector(searchTapped(_:)), for: .touchUpInside)
    }
    
    fileprivate func prepareSosButton() {
        self.sosButton = RaisedButton(title: "SOS", titleColor: Color.white)
        sosButton.pulseColor = .white
        sosButton.backgroundColor = Color.blue.base
    }
    
    fileprivate func prepareNavigationItem() {
        navigationItem.title = "Elephant"
        navigationItem.titleLabel.font = UIFont(name: "Savoye Let", size: 24)
        navigationItem.titleLabel.textColor = Color.blue.base
        navigationItem.detail = "Community Posts"
        navigationItem.leftViews = [sosButton]
        navigationItem.rightViews = [searchButton]
    }
    
    fileprivate func hideSearch(animated: Bool) {
        let duration = animated ? 1.0 : 0.0
        UIView.animate(withDuration: duration, animations: {
            self.searchBar.alpha = 0.0
            self.rootViewController.view.frame.origin.y -= self.searchBar.height
        }, completion: {
            (value: Bool) in
            self.searchBar.isUserInteractionEnabled = false
        })
    }
    
    fileprivate func showSearch(animated: Bool) {
        let duration = animated ? 1.0 : 0.0
        UIView.animate(withDuration: duration, animations: {
            self.searchBar.alpha = 1.0
            self.rootViewController.view.frame.origin.y += self.searchBar.height
        }, completion: {
            (value: Bool) in
            self.searchBar.isUserInteractionEnabled = true
        })
    }
}

// Updates
extension AppSearchBarController {
    func sosTapped(_ sender: IconButton!) {
        // Create SOS Modal
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "Roboto", size: 20)!,
            kTextFont: UIFont(name: "Roboto", size: 14)!,
            kButtonFont: UIFont(name: "Roboto", size: 14)!,
            showCloseButton: false
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.addButton("Cancel") {
            print("Cancelled")
        }
        alertView.addButton("Call") {
            print("Call Tapped")
        }
        alertView.showSuccess("For immediate help", subTitle: "Call the University Counceling Center's 24/7 hotline")
    }
    
    func searchTapped(_ sender: IconButton!) {
        if self.searchBar.alpha < 1 {
            self.showSearch(animated: true)
        } else {
            self.hideSearch(animated: true)
        }
    }
}
