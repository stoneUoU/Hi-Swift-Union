//
//  ViewController.swift
//  Hi-Swift-Union
//
//  Created by stone on 2022/4/28.
//

import UIKit
import Hi_Router_Module

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white;
        self.view.addSubview(self.excuteButton);
    }
    
    @objc lazy var excuteButton: UIButton = {
        let excuteButton = UIButton.init(type: UIButton.ButtonType.custom)
        excuteButton.frame = CGRect.init(x: 16, y: (HiSCREENHEIGHT - 44)/2, width: HiSCREENWIDTH - 32, height: 44);
        excuteButton.setTitle("Swift Project", for: UIControl.State.normal)
        excuteButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        excuteButton.setTitleColor(.black, for: .normal)
        excuteButton.layer.borderWidth = 0.5;
        excuteButton.layer.borderColor = UIColor.lightGray.cgColor;
        excuteButton.layer.cornerRadius = 22;
        excuteButton.layer.masksToBounds = true;
        excuteButton.addTarget(self, action: #selector(toExcute(_:)), for: .touchUpInside)
        return excuteButton
    }()
}

extension ViewController {
    @objc func toExcute(_ sender: UIButton) {
        print(sender.titleLabel?.text);
    }
}

