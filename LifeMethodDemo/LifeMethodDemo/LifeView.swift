//
//  LifeView.swift
//  LifeMethodDemo

import UIKit

class LifeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.redColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        print("\(__FUNCTION__) \(frame)")
    }
    
    override func willMoveToWindow(newWindow: UIWindow?) {
        super.willMoveToWindow(newWindow)
        
        print("\(__FUNCTION__) \(frame)")
    }
    
    override func willMoveToSuperview(newSuperview: UIView?) {
        super.willMoveToSuperview(newSuperview)
        
        print("\(__FUNCTION__) \(frame)")
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        print("\(__FUNCTION__) \(frame)")
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        
        print("\(__FUNCTION__) \(frame)")
    }
    
}
