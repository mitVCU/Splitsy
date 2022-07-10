//
//  MainViewController.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import UIKit

class MainViewController: UIViewController {
    private let mainView = MainView()
    
    // MARK: - Properties
    var presenter: ViewToPresenterMainProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        // add subviews
        self.mainView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview( self.mainView)

        let views = ["mainView" : self.mainView]
        let viewHConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainView]|", metrics: nil, views: views)
        let viewVConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[mainView]", metrics: nil, views: views)

        self.view.addConstraints(viewHConstraints + viewVConstraints)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)

    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        print("Handling tap")
        presenter?.didTap()
    }
}

extension MainViewController: PresenterToViewMainProtocol{
    
}
