//
//  BillDetailProtocols.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewBillDetailProtocol: AnyObject {
    
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterBillDetailProtocol: AnyObject {
    
    var view: PresenterToViewBillDetailProtocol? { get set }
    var interactor: PresenterToInteractorBillDetailProtocol? { get set }
    var router: PresenterToRouterBillDetailProtocol? { get set }

    func viewDidLoad()
    
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorBillDetailProtocol: AnyObject {
    
    var presenter: InteractorToPresenterBillDetailProtocol? { get set }
    
    
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterBillDetailProtocol: AnyObject {
    
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterBillDetailProtocol: AnyObject {
    
    static func createModule() -> UIViewController
}
