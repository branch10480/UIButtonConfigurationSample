//
//  ViewController.swift
//  UIButtonConfigurationSample
//
//  Created by Toshiharu Imaeda on 2023/06/04.
//

import UIKit
import MainModule

class ViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rootVC = RootViewController.instantiate()
        setViewControllers([rootVC], animated: false)
    }


}

