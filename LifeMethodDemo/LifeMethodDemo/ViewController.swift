//  ViewController.swift
//  LifeMethodDemo

import UIKit

class ViewController: UIViewController {

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let Vc = LifeDemoViewController()
        presentViewController(Vc, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(__FUNCTION__)
        print(view)

    }

    
    
}

