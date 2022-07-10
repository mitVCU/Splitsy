//
//  BillSplitViewController.swift
//  Splitsy
//
//  Created by Mit Amin on 7/6/22.
//

import UIKit

class BillSplitViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: ViewToPresenterBillDetailProtocol?
    private let billDetailsView = BillDetailsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
                
        // add subviews
        self.billDetailsView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview( self.billDetailsView)
        
        let views = ["billDetails" : self.billDetailsView]
        let viewHConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[billDetails]|", metrics: nil, views: views)
        let viewVConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[billDetails]", metrics: nil, views: views)
        
        self.view.addConstraints(viewHConstraints + viewVConstraints)
        
        billDetailsView.configure(billAmount: 4500)
        
        presenter?.viewDidLoad()
    }
}

extension BillSplitViewController: PresenterToViewBillDetailProtocol {
    
    
}
