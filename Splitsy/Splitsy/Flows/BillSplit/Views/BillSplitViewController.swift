//
//  BillSplitViewController.swift
//  Splitsy
//
//  Created by Mit Amin on 7/6/22.
//

import UIKit

class BillSplitViewController: UIViewController {
    fileprivate let billDetailsView = BillDetailsView()
    fileprivate let tableView = UITableView()
    
    fileprivate let presenter: BillSplitPresenterType
    
    init(presenter: BillSplitPresenterType) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        // congfigure tableView
        self.tableView.backgroundColor = .purple
        self.tableView.rowHeight = 150.0
        
        // configure Bill details
        
        // add subviews
        self.billDetailsView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.billDetailsView)
        self.view.addSubview(self.tableView)
        
        let views = ["billDetails" : self.billDetailsView,
                     "tableView" : self.tableView]
        let billDetailsConstraintsH = NSLayoutConstraint.constraints(withVisualFormat: "H:|[billDetails]|", metrics: nil, views: views)
        let billDetailsConstraintsV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[billDetails]", metrics: nil, views: views)
        let tableViewConstraintsH = NSLayoutConstraint.constraints(withVisualFormat: "H:|[tableView]|", metrics: nil, views: views)
        let tableViewConstraintsV = NSLayoutConstraint.constraints(withVisualFormat: "V:[billDetails(==200)][tableView]|", metrics: nil, views: views)

        self.view.addConstraints(billDetailsConstraintsH + billDetailsConstraintsV)
        self.view.addConstraints(tableViewConstraintsH + tableViewConstraintsV)
        
        self.presenter.handleViewDidload()
//        billDetailsView.configure(billAmount: 4500)
    }
}

extension BillSplitViewController { // delegation
    func set(tableViewDataSource: UITableViewDataSource) {
        self.tableView.dataSource = tableViewDataSource
    }
    
    func set(tableViewDelegate: UITableViewDelegate) {
        self.tableView.delegate = tableViewDelegate
    }
}
