//
//  ViewController.swift
//  FinalProject
//
//  Created by Alexis Hedvat-20 on 8/7/18.
//  Copyright © 2018 Alexis Hedvat-20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    private var datePicker: UIDatePicker?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        inputTextField.inputView = datePicker
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        inputTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    
    @IBAction func didclickgo(_ sender: Any) {
        self.performSegue(withIdentifier: "EditToProfile", sender: Any?.self)
    }
    @IBAction func didclickcreate(_ sender: Any) {
        self.performSegue(withIdentifier: "EditToProfile", sender: Any?.self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nameinput: UITextField!
    @IBOutlet weak var ageinput: UITextField!
    @IBOutlet weak var parentnameinput: UITextField!
    @IBOutlet weak var typeinput: UITextField!
    
    

    
    @IBOutlet weak var usernameinput: UITextField!
    @IBOutlet weak var passwordinput: UITextField!
    
    
}

