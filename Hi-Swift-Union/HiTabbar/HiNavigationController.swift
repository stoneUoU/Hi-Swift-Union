//
//  HiNavigationController.swift
//  Hi-Swift-Union
//
//  Created by stone on 2022/4/29.
//

import UIKit

class HiNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }

    @objc private func toBack() {
        popViewController(animated: true)
    }
}

