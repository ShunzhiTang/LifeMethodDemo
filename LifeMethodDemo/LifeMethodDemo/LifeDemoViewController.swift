/**
自动布局运行结果
loadView() (0.0, 0.0, 0.0, 0.0)
viewDidLoad() (0.0, 0.0, 0.0, 0.0)
viewWillAppear (0.0, 0.0, 0.0, 0.0)
viewWillLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
viewDidLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
layoutSubviews() (0.0, 0.0, 375.0, 667.0)
viewDidAppear (0.0, 0.0, 375.0, 667.0)

loadView 直接指定视图的大小
loadView() (0.0, 0.0, 395.0, 667.0)
viewDidLoad() (0.0, 0.0, 395.0, 667.0)
viewWillAppear (0.0, 0.0, 395.0, 667.0)
viewWillLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
viewDidLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
layoutSubviews() (0.0, 0.0, 375.0, 667.0)
viewDidAppear (0.0, 0.0, 375.0, 667.0)

* viewWillLayoutSubviews 函数中，视图的大小被修改为 屏幕的大小，自动布局系统做的


在 didLayoutSubviews 重新设置了 view 的大小
loadView() (0.0, 0.0, 395.0, 667.0)
viewDidLoad() (0.0, 0.0, 395.0, 667.0)
viewWillAppear (0.0, 0.0, 395.0, 667.0)
viewWillLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
viewDidLayoutSubviews() (0.0, 0.0, 395.0, 667.0)
layoutSubviews() (0.0, 0.0, 395.0, 667.0)
viewDidAppear (0.0, 0.0, 395.0, 667.0)

但是，在 dismiss 的时候，会执行
viewWillLayoutSubviews() (0.0, 667.0, 395.0, 667.0)
viewDidLayoutSubviews() (0.0, 0.0, 395.0, 667.0)
造成了屏幕的闪动

> 提示：beta 4 & beta 5运行的效果不一样

结论：使用自动布局定义控件，视图大小会变成屏幕大小，如果强行设置，dismiss 又回造成屏幕闪烁！

使用非自动布局，纯代码设置控件大小，dismiss 的时候，不会调用 viewDidLaouySubviews
loadView() (0.0, 0.0, 395.0, 667.0)
viewDidLoad() (0.0, 0.0, 395.0, 667.0)
viewWillAppear (0.0, 0.0, 395.0, 667.0)
viewWillLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
viewDidLayoutSubviews() (0.0, 0.0, 375.0, 667.0)
layoutSubviews() (0.0, 0.0, 395.0, 667.0)
viewDidAppear (0.0, 0.0, 375.0, 667.0)

*/
import UIKit

class LifeDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         print("\(__FUNCTION__) \(view.frame)")
            
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var screenBounds = UIScreen.mainScreen().bounds
        screenBounds.size.width += 20
        view.frame = screenBounds
        
       print("\(__FUNCTION__) \(view.frame)")
    
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("\(__FUNCTION__) \(view.frame)")
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        var screenBounds = UIScreen.mainScreen().bounds
//        screenBounds.size.width += 20
//        view.frame = screenBounds
        
       print("\(__FUNCTION__) \(view.frame)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\(__FUNCTION__) \(view.frame)")
    }
    
    override func loadView() {
        super.loadView()
        var screenView = UIScreen.mainScreen().bounds
        screenView.size.width += 20
        view = UIView(frame: screenView)
        
        view.backgroundColor = UIColor.lightGrayColor()
        let v = LifeView()
        v.frame = screenView
        view.addSubview(v)
       print("\(__FUNCTION__) \(view.frame)")
    }
    


}
