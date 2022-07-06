//
//  BillSplitViewController.swift
//  Splitsy
//
//  Created by Mit Amin on 7/6/22.
//

import UIKit

class BillSplitViewController: UIViewController {
    private var titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        // configure title
        self.titleLabel.text = "Hello World"
        
        // add subviews
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview( self.titleLabel)
        
        // set constraints
        
        // Center horizontally
        let textHConstraints = NSLayoutConstraint(item: self.titleLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0.0)
         // Center vertically
        let textVConstraints = NSLayoutConstraint(item: self.titleLabel, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0.0)
        
        self.view.addConstraints([textHConstraints, textVConstraints])
    }
}
