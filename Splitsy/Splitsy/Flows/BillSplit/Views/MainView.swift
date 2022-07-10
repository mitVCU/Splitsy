//
//  MainView.swift
//  Splitsy
//
//  Created by rawalb on 7/9/22.
//

import UIKit

import UIKit

class MainView: UIView {
    let manualEntryButton = UIButton(type: .system)
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    
    func commonInit() {
        self.backgroundColor = .cyan
        
        // configure title label

        self.manualEntryButton.setTitle("PRESS ME", for: .normal)
        self.manualEntryButton.backgroundColor = .gray
        
        // configure billAmount label
        
        self.manualEntryButton.translatesAutoresizingMaskIntoConstraints = false
        self.manualEntryButton.isUserInteractionEnabled = true
        self.manualEntryButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
       
        self.addSubview(self.manualEntryButton)
        
        // configure constraints
        let views = ["manualEntry" : self.manualEntryButton]
        
        let manualEntryHConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[manualEntry]|", metrics: nil, views: views)
        let manualEntryVConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-16-[manualEntry]", metrics: nil, views: views)

        // add constraints
        self.addConstraints(manualEntryHConstraint + manualEntryVConstraint)

    }
    
    @objc func buttonAction(sender: UIButton!) {
         print("Button Clicked")
    }
    
   
}
