//
//  MainPresenter.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import Foundation

class MainPresenter: ViewToPresenterMainProtocol {
    func didTap() {
        interactor?.sendTapSignal()
    }
    
    
    // MARK: Properties
    weak var view: PresenterToViewMainProtocol?
    var interactor: PresenterToInteractorMainProtocol?
    var router: PresenterToRouterMainProtocol?
    
    
    // MARK: Inputs from view
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
    }
    
    func refresh() {
        print("Presenter is being notified that the View was refreshed.")
        
    }
    
    
}

// MARK: - Outputs to view
extension MainPresenter: InteractorToPresenterMainProtocol {
    func getTapSuccess() {
        router?.pushToBillDetail(on: view!)
    }
    
    
    
}
