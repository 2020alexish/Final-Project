//
//  ViewController.swift
//  FinalProject
//
//  Created by Alexis Hedvat-20 on 8/7/18.
//  Copyright © 2018 Alexis Hedvat-20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
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
    @IBOutlet weak var patientinput: UITextField!
    @IBOutlet weak var typeinput: UITextField!
    
    
    
    @IBOutlet weak var usernameinput: UITextField!
    @IBOutlet weak var passwordinput: UITextField!
    
    
}

