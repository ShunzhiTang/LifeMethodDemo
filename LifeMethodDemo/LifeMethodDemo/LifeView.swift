//
//  LifeView.swift
//  LifeMethodDemo

import UIKit

class LifeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blueColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("\(__FUNCTION__) \(frame)")
    }
    
}
