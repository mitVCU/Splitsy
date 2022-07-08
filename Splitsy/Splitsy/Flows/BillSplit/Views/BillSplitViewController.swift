//
//  BillSplitViewController.swift
//  Splitsy
//
//  Created by Mit Amin on 7/6/22.
//

import UIKit

class BillSplitViewController: UIViewController {
    private let billDetailsView = BillDetailsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
                
        // add subviews
        self.billDetailsView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview( self.billDetailsView)
        
        let views = ["billDetails" : self.billDetailsView]
        let viewHConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[billDetails]|", metrics: nil, views: views)
        let viewVConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[billDetails]-400-|", metrics: nil, views: views)
        
        self.view.addConstraints(viewHConstraints + viewVConstraints)
    }
}
