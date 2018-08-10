//
//  ViewController.swift
//  Date picker in UI text field practice
//
//  Created by Stasi Micich on 8/10/18.
//  Copyright © 2018 GWC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input_text_field: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        view.endEditing(true)
        
        
        input_text_field.inputView = datePicker
    }

    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        
    }
    }
    
func dateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd//yyyy"
        input_text_field.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }




