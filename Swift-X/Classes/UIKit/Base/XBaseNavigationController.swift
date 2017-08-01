//
//  XBaseNavigationController.swift
//  Swift-X
//
//  Created by wangcong on 24/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import UIKit

open class XBaseNavigationController: UINavigationController {

    override open func viewDidLoad() {
        super.viewDidLoad()

    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override open var shouldAutorotate: Bool {
        return self.visibleViewController?.shouldAutorotate ?? false
    }

    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.visibleViewController?.supportedInterfaceOrientations ?? UIInterfaceOrientationMask.portrait
    }

    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return self.visibleViewController?.preferredInterfaceOrientationForPresentation ?? UIInterfaceOrientation.portrait
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
