//
//  MainProtocols.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewMainProtocol: AnyObject {
//TODO
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterMainProtocol: AnyObject {
    
    var view: PresenterToViewMainProtocol? { get set }
    var interactor: PresenterToInteractorMainProtocol? { get set }
    var router: PresenterToRouterMainProtocol? { get set }
    
//    var quotesStrings: [String]? { get set }
//
//    func viewDidLoad()
//
//    func refresh()
//
//    func numberOfRowsInSection() -> Int
//    func textLabelText(indexPath: IndexPath) -> String?
//
//    func didSelectRowAt(index: Int)
//    func deselectRowAt(index: Int)
    
    func didTap()

}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorMainProtocol: AnyObject {
    
    var presenter: InteractorToPresenterMainProtocol? { get set }
    
//    func loadQuotes()
//    func retrieveQuote(at index: Int)
    func sendTapSignal()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterMainProtocol: AnyObject {
    
//    func fetchQuotesSuccess(quotes: [Quote])
//    func fetchQuotesFailure(errorCode: Int)
//
//    func getQuoteSuccess(_ quote: Quote)
//    func getQuoteFailure()
    
    func getTapSuccess()
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterMainProtocol: AnyObject {
    
    static func createModule() -> UINavigationController
    
//    func pushToQuoteDetail(on view: PresenterToViewMainProtocol)
    func pushToBillDetail(on view: PresenterToViewMainProtocol)
}
