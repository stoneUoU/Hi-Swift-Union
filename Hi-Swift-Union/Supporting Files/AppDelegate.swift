//
//  AppDelegate.swift
//  Hi-Swift-Union
//
//  Created by stone on 2022/4/28.
//

import UIKit
import Hi_Router_Module
import Hi_Home_Module
import Hi_Personal_Module
import HSA_NetEncryption_iOS

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // register
//        UIImage.initializeMethod();
        HiHomeModule.registerPages();
        HiPersonalModule.registerPages();
        JITMiddleWareSDKHelper.sharedInstance()?.initSDK();
        self.initWindow();
        // Override point for customization after application launch.
        return true
    }
    
    func initWindow() {
        self.window = UIWindow(frame: UIScreen.main.bounds);
        let animate = CATransition();
        animate.type = CATransitionType(rawValue: "rippleEffect")
        animate.duration = 1.0;
        self.window?.layer.add(animate, forKey: nil)
        self.window?.makeKeyAndVisible()
        let tabbarView = HiTabbarViewController();
        self.window?.rootViewController = tabbarView;
    }
    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    }
}

