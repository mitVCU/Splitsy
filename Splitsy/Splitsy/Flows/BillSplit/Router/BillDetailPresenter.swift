//
//  BillDetailPresenter.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import Foundation

class BillDetailPresenter: ViewToPresenterBillDetailProtocol {

    // MARK: Properties
    weak var view: PresenterToViewBillDetailProtocol?
    var interactor: PresenterToInteractorBillDetailProtocol?
    var router: PresenterToRouterBillDetailProtocol?
    
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        
    }
    
}

extension BillDetailPresenter: InteractorToPresenterBillDetailProtocol {
    
    
}
