//
//  TextViewViewController.swift
//  swift_base
//
//  Created by pxh on 2017/1/11.
//  Copyright © 2017年 pxh. All rights reserved.
//

import UIKit

class TextViewViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let mail = UIMenuItem.init(title: "邮箱", action: #selector(onMail))
//        let weiXin = UIMenuItem.init(title: "微信", action: #selector(onWeiXin))
//        let weiBo = UIMenuItem.init(title: "微博", action: #selector(onWeiBo))
//        let menu = UIMenuController()
//        menu.menuItems = NSArray.init(array: [mail,weiXin,weiBo]) as? [UIMenuItem]
    }

    func onMail(){
        print("onMail")
    }
    func onWeiXin(){
        print("onWeiXin")
    }
    func onWeiBo(){
        print("onWeiBo")
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
