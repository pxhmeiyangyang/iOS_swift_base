//
//  BundleInfoVC.swift
//  swift_base
//
//  Created by pxh on 2017/1/12.
//  Copyright © 2017年 pxh. All rights reserved.
//

import UIKit

class BundleInfoVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let dataArray = ["DTPlatformName","DTPlatformVersion","CFBundleIdentifier","CFBundleShortVersionString","CFBundleExecutable","CFBundleVersion"]
    let dictionary = Bundle.main.infoDictionary
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        setUpTableview()
    }
    func setUpTableview(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView.init()
    }
    //MARK:- Tableview dataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        let cellKey : String = dataArray[indexPath.row]
        
        return cell
    }
    
    //MARK:- Tableview delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
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
