//
//  ViewController.swift
//  Swift-X
//
//  Created by wangcccong@foxmail.com on 07/05/2017.
//  Copyright (c) 2017 wangcccong@foxmail.com. All rights reserved.
//

import UIKit
import Swift_X

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let textView = XTextView(frame: CGRect(x: 20, y: 30, width: UIScreen.main.bounds.size.width - 40, height: 200))
        textView.placeholder = "请输入"
        textView.clipsToBounds = true
        textView.layer.cornerRadius = 5.0
        textView.backgroundColor = UIColor.lightGray
        self.view.addSubview(textView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
