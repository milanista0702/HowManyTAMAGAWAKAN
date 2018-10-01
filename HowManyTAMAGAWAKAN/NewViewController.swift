 //
//  NewViewController.swift
//  HowManyTAMAGAWAKAN
//
//  Created by misako makka on 2018/09/29.
//  Copyright © 2018年 misako makka. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet var nametext: UITextField!
    @IBOutlet var moneytext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.moneytext.keyboardType = UIKeyboardType.numberPad
    }
    
    @IBAction func ok(_sender: UIButton) {
        
    }
    

}
