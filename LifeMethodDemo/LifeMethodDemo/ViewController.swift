//  ViewController.swift
//  LifeMethodDemo

import UIKit

class ViewController: UIViewController {

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let Vc = LifeDemoViewController()
        
        Vc.transitioningDelegate = self
        
        //这个只是需要modal的显示  ，和其他的没有关系
        Vc.modalPresentationStyle = UIModalPresentationStyle.Custom
        //这个才是dismiss显示的动画转换的方式
        Vc.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
       
        
        presentViewController(Vc, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(__FUNCTION__)
        print(view)
    }
    
}

//MARK: 实现转场动画就要遵守协议
extension ViewController: UIViewControllerTransitioningDelegate{
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
}

//MARK: 需要遵守转场这个协议
extension ViewController:UIViewControllerAnimatedTransitioning{
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 2.0
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        
        transitionContext.containerView()?.addSubview(toView)
        
        //开始动画
        transitionContext.completeTransition(true)
    }
}
