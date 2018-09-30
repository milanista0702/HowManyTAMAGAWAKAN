//
//  ViewController.swift
//  HowManyTAMAGAWAKAN
//
//  Created by misako makka on 2018/09/27.
//  Copyright © 2018年 misako makka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firsttext: UITextField!
    @IBOutlet var secondtext: UITextField!
    @IBOutlet var thirdtext: UITextField!
    @IBOutlet var abovepicker: UIPickerView!
    @IBOutlet var underpicker: UIPickerView!
    
    var addbtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addbtn = UIBarButtonItem(title: "UNITS", style: UIBarButtonItem.Style.plain, target: self, action: #selector(tounits(sender:)))
        self.navigationItem.rightBarButtonItem = addbtn
        
        self.firsttext.keyboardType = UIKeyboardType.numberPad
        self.secondtext.keyboardType = UIKeyboardType.numberPad
        self.thirdtext.keyboardType = UIKeyboardType.numberPad
        
    }
    
    @IBAction func allclear(_sender: UIButton) {
        
    }
    
    @IBAction func tapscreen(_sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @objc internal func tounits(sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "tounits", sender: nil)
    }
    
}

