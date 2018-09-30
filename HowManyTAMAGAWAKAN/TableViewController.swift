//
//  TableViewController.swift
//  HowManyTAMAGAWAKAN
//
//  Created by misako makka on 2018/09/29.
//  Copyright © 2018年 misako makka. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }
    

    @IBAction func addbtn(_ sender: Any) {
        self.performSegue(withIdentifier: "tonew", sender: nil)
    }
    

}
