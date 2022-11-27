//
//  BillSplitPresenter.swift
//  Splitsy
//
//  Created by Mit Amin on 10/15/22.
//

import Foundation
import UIKit
class BillSplitPresenter: NSObject {
    internal weak var vc: BillSplitViewController?
    
    fileprivate let billTotal: Double = 0.00
    fileprivate let people: [People]
    fileprivate let items: [Item]
    
    override init() {
        self.people = []
        self.items = []
    }
}

extension BillSplitPresenter: BillSplitPresenterType {
    func handleViewDidload() {
        self.vc?.set(tableViewDataSource: self)
        self.vc?.set(tableViewDelegate: self)
    }
}

extension BillSplitPresenter: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .red
        return cell
    }
}

extension BillSplitPresenter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
}
