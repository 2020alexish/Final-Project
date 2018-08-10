//
//  ViewController.swift
//  picker_view_practice_2
//
//  Created by Stasi Micich on 8/10/18.
//  Copyright © 2018 GWC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputtextfield: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

