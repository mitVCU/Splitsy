//
//  BillDetailRouter.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import Foundation
import UIKit

class BillDetailRouter: PresenterToRouterBillDetailProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        print("BillDetailRouter creates the QuoteDetail module.")
        let viewController = BillSplitViewController()
        
        let presenter: ViewToPresenterBillDetailProtocol & InteractorToPresenterBillDetailProtocol = BillDetailPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = BillDetailRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = BillDetailIntereactor()
//        viewController.presenter?.interactor?.quote = quote
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
