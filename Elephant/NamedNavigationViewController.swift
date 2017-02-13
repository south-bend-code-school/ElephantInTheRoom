import UIKit
import Material

class NamedNavigationController: NavigationController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    init(withTitle title: String, rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        self.preparePageTabBarItem(withTitle: title)
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
}

extension NamedNavigationController {
    fileprivate func preparePageTabBarItem(withTitle title: String) {
        pageTabBarItem.title = title
        pageTabBarItem.titleColor = Color.blueGrey.base
    }
}
