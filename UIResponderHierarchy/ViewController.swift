//
//  ViewController.swift
//  UIResponderHierarchy
//
//  Created by Gopal Gupta on 22/04/18.
//  Copyright © 2018 Gopal Gupta. All rights reserved.
//

import UIKit
////  UIView -> ViewController -> Window-> App Delegate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Understaning UIResponder!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("ViewController touch Began")
        next?.touchesBegan(touches, with: event)
    }

}
extension UIWindow{
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("UIView -> ViewController -> Window->")
        next?.touchesBegan(touches, with: event)
    }
}
extension UIView{
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("UIView -> ViewController ->")
        next?.touchesBegan(touches, with: event)
    }
}
