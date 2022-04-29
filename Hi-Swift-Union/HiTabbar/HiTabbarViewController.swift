//
//  HiTabbarViewController.swift
//  Hi-Swift-Union
//
//  Created by stone on 2022/4/29.
//

import UIKit
import Hi_Kit_Module
import Hi_Router_Module

enum HiTabIndex:Int {
    case home = 0
    case mine = 1
}

class HiTabbarViewController: UITabBarController {
    
//    @objc lazy var tab: HiTabBar = {
//        let tab = HiTabBar.init(frame: .zero, tabbarBtnNum: 3)
//        return tab
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = true;
        self.tabBar.barTintColor = UIColor.white;
        self.tabBar.backgroundColor = UIColor.color_HexStr("#F7F9FD");
        self.setUI()
        self.addObserver();
    }
    
    private func setUI() {
        
        if let homeVC = HiRouter.shared.viewController("home://home"),
           let personalVC = HiRouter.shared.viewController("personal://personal") {
            self.addViewController(homeVC, "首页", "tabbar_home")
            self.addViewController(personalVC, "我的", "tabbar_mine")
        }
    }
    
    func addObserver() {
        
    }
    
    private func addViewController(_ vc: UIViewController, _ title: String, _ imageN: String) {
        
        let navVC = HiNavigationController(rootViewController: vc)
        vc.tabBarItem.image = UIImage(named: imageN)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: imageN + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.title = title
        //设置未选中字体颜色
        UITabBarItem.appearance().setTitleTextAttributes([
            .foregroundColor : UIColor.color_HexStr("#494949")
            ], for: .normal)
        //设置选中字体颜色
        UITabBarItem.appearance().setTitleTextAttributes([
            .foregroundColor : UIColor.color_HexStr("#8676d7")
            ], for: .selected)
        addChild(navVC)
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
}

