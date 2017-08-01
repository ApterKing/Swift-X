//
//  XBaseViewController.swift
//  Swift-X
//
//  Created by wangcong on 24/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import UIKit

open class XBaseViewController: UIViewController, UIGestureRecognizerDelegate {

    public var isNavigationBarHiddenInController: Bool {
        return navigationBarHidden
    }
    fileprivate var navigationBarHidden = false

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }

    override open func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    override open func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationBarHidden = self.navigationController?.isNavigationBarHidden ?? false
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if ((self.navigationController != nil) && (self.navigationController?.topViewController?.isKind(of: XBaseViewController.self))!) {
            let controller: XBaseViewController = self.navigationController?.topViewController as! XBaseViewController
            self.navigationController?.setNavigationBarHidden(controller.isNavigationBarHiddenInController, animated: true)
        }
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    override open var shouldAutorotate: Bool {
        return false
    }

    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }

    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return UIInterfaceOrientation.portrait
    }

}
