//
//  MainTabBar.swift
//  swift_base
//
//  Created by pxh on 2017/1/10.
//  Copyright © 2017年 pxh. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let uiSB = UIStoryboard.init(name: "UI", bundle: Bundle.main)
        let uiVC = uiSB.instantiateViewController(withIdentifier: "UIMainNavi")
        uiVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarSystemItem.more, tag: 1)
        
        let baseSB = UIStoryboard.init(name: "Base", bundle: Bundle.main)
        let baseVC = baseSB.instantiateViewController(withIdentifier: "baseMainNavi")
        baseVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarSystemItem.bookmarks, tag: 2)
        
        self.viewControllers = [uiVC,baseVC]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
