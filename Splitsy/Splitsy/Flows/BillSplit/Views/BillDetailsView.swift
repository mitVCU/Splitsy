//
//  BillDetailsView.swift
//  Splitsy
//
//  Created by Mit Amin on 7/7/22.
//

import UIKit

class BillDetailsView: UIView {
    let title = UILabel()
    let subTitle = UILabel()
    let billAmount = UILabel()
    let scanRecieptButton = UIButton()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    
    func commonInit() {
        // configure title label
        self.title.font = .preferredFont(forTextStyle: .largeTitle)
        
        // configure subtitle label
        self.subTitle.font = .preferredFont(forTextStyle: .title1)
        
        // configure billAmount label
        self.billAmount.font = .preferredFont(forTextStyle: .title2)
        
        // add subviews
        self.title.translatesAutoresizingMaskIntoConstraints = false
        self.subTitle.translatesAutoresizingMaskIntoConstraints = false
        self.billAmount.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.title)
        self.addSubview(self.subTitle)
        self.addSubview(self.billAmount)
        
        // configure constraints
        let views = ["title" : self.title,
                     "subTitle" : self.subTitle,
                     "billAmount" : self.billAmount]
        
        let titleHConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[title]|", metrics: nil, views: views)
        let titleVConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-16-[title]", metrics: nil, views: views)
        let subTitleHConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[subTitle]|", metrics: nil, views: views)
        let subTitleVConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[subTitle]", metrics: nil, views: views)
        let billAmountHConstraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[billAmount]|", metrics: nil, views: views)
        let billAmountVConstraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|-48-[billAmount]|", metrics: nil, views: views)
        
        // add constraints
        self.addConstraints(titleHConstraint + titleVConstraint)
        self.addConstraints(subTitleHConstraint + subTitleVConstraint)
        self.addConstraints(billAmountHConstraint + billAmountVConstraint)
    }

}
