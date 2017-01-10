//
//  TxtFeildViewController.swift
//  swift_base
//
//  Created by pxh on 2017/1/10.
//  Copyright © 2017年 pxh. All rights reserved.
//

import UIKit

class TxtFeildViewController: UIViewController {

    
    @IBOutlet weak var numOne: UITextField!
    
    @IBOutlet weak var numTwo: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addAction(_ sender: UIButton) {
        if (numOne.text?.characters.count)! > 0 && (numTwo.text?.characters.count)! > 0 {
            let result = (numOne.text! as NSString).floatValue + (numTwo.text! as NSString).floatValue
            resultLabel.text = "\(result)"
        }
    }
    @IBAction func viewControlAction(_ sender: UIControl) {
//        self.view.endEditing(true)
        print("界面响应事件")
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
