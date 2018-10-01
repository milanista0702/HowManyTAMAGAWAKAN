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
    @IBOutlet var toolbar: UIToolbar!

    var editBtn: UIBarButtonItem!
    var prise: Int!
    var units = [Units]()
    
    let saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        editBtn = UIBarButtonItem(title: "Edit", style: UIBarButtonItem.Style.plain, target: self, action: #selector(setEditing(_:animated:)))
        toolbar.items = [editBtn]
        
        table.dataSource = self
        table.delegate = self
        
        self.table.estimatedRowHeight = 70
        self.table.rowHeight = UITableView.automaticDimension
        table.register(UINib(nibName: "UnitsTableViewCell", bundle: nil), forCellReuseIdentifier: "UnitsTableViewCell")
        
        units.append(Units(name: "玉川館", prise: 19440))
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        table.isEditing = editing
    }

    @IBAction func addbtn(_ sender: Any) {
        self.performSegue(withIdentifier: "tonew", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UnitsTableViewCell") as! UnitsTableViewCell
        cell.namelabel.text = units[indexPath.row].name
        prise = units[indexPath.row].prise
        cell.moneylabel.text = "\(String(prise))円"
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if( editingStyle == UITableViewCell.EditingStyle.delete) {
            units.remove(at: indexPath.row)
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if table.isEditing {
            return UITableViewCell.EditingStyle.delete
        }else{
            return UITableViewCell.EditingStyle.none
        }
        table.allowsSelectionDuringEditing = true
    }
    
    
    
}
