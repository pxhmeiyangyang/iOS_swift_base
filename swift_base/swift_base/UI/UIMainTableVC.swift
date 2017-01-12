//
//  UIMainTableVC.swift
//  swift_base
//
//  Created by pxh on 2017/1/10.
//  Copyright © 2017年 pxh. All rights reserved.
//

import UIKit

class UIMainTableVC: UITableViewController {

    let dataList = ["Button","Label","TextField","TextView"]
    
    let UISB = UIStoryboard.init(name: "UI", bundle: Bundle.main)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        setUpNavi()
        setUpTableview()
    }

    func setUpNavi(){
        self.navigationItem.title = "UI"
    }
    func setUpTableview(){
        self.tableView.tableFooterView = UIView.init()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.dataList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.text = dataList[indexPath.row]
        return cell
    }
 
    //MARK: - table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let buttonVC = UISB.instantiateViewController(withIdentifier: "ButtonViewController")
            buttonVC.hidesBottomBarWhenPushed = true
            buttonVC.navigationItem.title = dataList[indexPath.row]
            self.navigationController?.pushViewController(buttonVC, animated: true)
        case 1:
            let buttonVC = UISB.instantiateViewController(withIdentifier: "LabelViewController")
            buttonVC.hidesBottomBarWhenPushed = true
            buttonVC.navigationItem.title = dataList[indexPath.row]
            self.navigationController?.pushViewController(buttonVC, animated: true)
        case 2:
            let buttonVC = UISB.instantiateViewController(withIdentifier: "TxtFeildViewController")
            buttonVC.hidesBottomBarWhenPushed = true
            buttonVC.navigationItem.title = dataList[indexPath.row]
            self.navigationController?.pushViewController(buttonVC, animated: true)
        case 3:
            let buttonVC = UISB.instantiateViewController(withIdentifier: "TextViewViewController")
            buttonVC.hidesBottomBarWhenPushed = true
            buttonVC.navigationItem.title = dataList[indexPath.row]
            self.navigationController?.pushViewController(buttonVC, animated: true)
        default:
            break
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
