//
//  MainInteractor.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import Foundation

class MainInteractor: PresenterToInteractorMainProtocol {
    func sendTapSignal() {
        self.presenter?.getTapSuccess()
    }
    
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterMainProtocol?
}
