//  ViewController.swift
//  FinalProject
//  Created by Alexis Hedvat-20 on 8/7/18.
//  Copyright © 2018 Alexis Hedvat-20. All rights reserved.

import UIKit

<<<<<<< HEAD
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
    
    
=======
class ViewController: UIViewController, UIPickerViewDataSource,
    UIPickerViewDelegate {
    var medicines: [String] = ["Hydromorphone", "Morphine", "Oxycodone", "Acetaminophen", "Tramadol", "Carisoprodol", "Cyclobenzaprine", "Codeine"]
    
    var painpick:String = ""
    
    @IBOutlet weak var medpicker: UIPickerView!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return medicines.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return medicines[row]
    }

    //func numberOfComponents2(in pickerView2: UIPickerView) -> Int {
        //return 1
    //}

    @IBOutlet weak var survey: UILabel!
    @IBOutlet weak var surveyq1: UITextField!
    @IBOutlet weak var surveyq2: UITextField!
    @IBOutlet weak var surveyq3: UITextField!
    @IBOutlet weak var surveyq4: UITextField!
    @IBOutlet weak var selectedmed: UILabel!
    @IBOutlet weak var tookmed: UIButton!
    @IBOutlet weak var nottookmed: UIButton!
    @IBOutlet weak var thankyou: UITextField!
    @IBOutlet weak var surveyq5: UITextField!
    @IBOutlet weak var armbutton: UIButton!
    @IBOutlet weak var headbutton: UIButton!
    @IBOutlet weak var legbutton: UIButton!
    @IBOutlet weak var footbutton: UIButton!
    @IBOutlet weak var fever: UIButton!
    @IBAction func feverclicked(_ sender: Any) {
        self.performSegue(withIdentifier: "SurveyToThanks", sender: self)
    }
    @IBOutlet weak var handbutton2: UIButton!
    
    
    @IBOutlet weak var dizzy: UIButton!
    @IBAction func dizzyclicked(_ sender: Any) {
        self.performSegue(withIdentifier: "SurveyToThanks", sender: self)
    }
    @IBOutlet weak var nausea: UIButton!
    @IBAction func nauseaclicked(_ sender: Any) {
        self.performSegue(withIdentifier: "SurveyToThanks", sender: self)
    }
    @IBOutlet weak var nothing: UIButton!
    @IBAction func nothinghurts(_ sender: Any) {
        self.performSegue(withIdentifier: "SurveyToThanks", sender: self)
    }
    @IBAction func pressedyes(_ sender: Any) {
        surveyq4.isHidden = false
        medpicker.isHidden = false
    }
    @IBAction func pressedno(_ sender: Any) {
        surveyq3.isHidden = false
        armbutton.isHidden = false
        headbutton.isHidden = false
        legbutton.isHidden = false
        footbutton.isHidden = false
        handbutton2.isHidden = false
        nothing.isHidden = false
    }
    @IBAction func clickedarmbutton(_ sender: Any) {
        surveyq5.isHidden = false
        dizzy.isHidden = false
        fever.isHidden = false
        nausea.isHidden = false
   }
    @IBAction func clickedheadbutton(_ sender: Any) {
        surveyq5.isHidden = false
        dizzy.isHidden = false
        fever.isHidden = false
        nausea.isHidden = false
    }
    @IBAction func clickedlegbutton(_ sender: Any) {
        surveyq5.isHidden = false
        dizzy.isHidden = false
        fever.isHidden = false
        nausea.isHidden = false
    }
    @IBAction func clickedhandbutton(_ sender: Any) {
        surveyq5.isHidden = false
        dizzy.isHidden = false
        fever.isHidden = false
        nausea.isHidden = false

    }
    
    @IBAction func clickedfootbutton(_ sender: Any) {
        surveyq5.isHidden = false
        dizzy.isHidden = false
        fever.isHidden = false
        nausea.isHidden = false

    }

    override func viewDidLoad() {
        tookmed.isHidden = true
        nottookmed.isHidden = true
        surveyq2.isHidden = true
        surveyq3.isHidden = true
        surveyq4.isHidden = true
        surveyq5.isHidden = true
        medpicker.isHidden = true
        selectedmed.isHidden = true
        thankyou.isHidden = true
        armbutton.isHidden = true
        headbutton.isHidden = true
        legbutton.isHidden = true
        footbutton.isHidden = true
        handbutton2.isHidden = true
        dizzy.isHidden = true
        fever.isHidden = true
        nausea.isHidden = true
        nothing.isHidden = true

        let pain1button = UIButton()
        let img = UIImage(named: "level1pain.png")!
        pain1button.frame = CGRect(x: 10, y:120, width:75, height:75)
        pain1button.setBackgroundImage(img, for: UIControlState.normal)
        self.view.addSubview(pain1button)
        pain1button.addTarget(self, action:#selector(ViewController.imageButtonTapped), for: .touchUpInside)

        let pain2button = UIButton()
        let img2 = UIImage(named: "level2pain.png")!
        pain2button.frame = CGRect(x: 90, y:120, width:75, height:75)
        pain2button.setBackgroundImage(img2, for: UIControlState.normal)
        self.view.addSubview(pain2button)
        pain2button.addTarget(self, action:#selector(ViewController.imageButtonTapped), for: .touchUpInside)

        let pain3button = UIButton()
        let img3 = UIImage(named: "level3face.jpg")!
        pain3button.frame = CGRect(x: 170, y:120, width:75, height:75)
        pain3button.setBackgroundImage(img3, for: UIControlState.normal)
        self.view.addSubview(pain3button)
        pain3button.addTarget(self, action:#selector(ViewController.imageButtonTapped), for: .touchUpInside)

        let pain4button = UIButton()
        let img4 = UIImage(named: "level4face.jpg")!
        pain4button.frame = CGRect(x: 250, y:120, width:75, height:75)
        pain4button.setBackgroundImage(img4, for: UIControlState.normal)
        self.view.addSubview(pain4button)
        pain4button.addTarget(self, action:#selector(ViewController.imageButtonTapped), for: .touchUpInside)

        let pain5button = UIButton()
        let img5 = UIImage(named: "angryface_edited-1.jpg")!
        pain5button.frame = CGRect(x: 330, y:120, width:75, height:75)
        pain5button.setBackgroundImage(img5, for: UIControlState.normal)
        self.view.addSubview(pain5button)
        pain5button.addTarget(self, action:#selector(ViewController.imageButtonTapped), for: .touchUpInside)


    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let defaults = UserDefaults.standard
        defaults.set(medicines[row], forKey: "selectedmed")
        
        if medicines[row] == medicines[0] {
            selectedmed.isHidden = false
            selectedmed.text = "Hydromorphone"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
        }
        if medicines[row] == medicines[1] {
            selectedmed.isHidden = false
            selectedmed.text = "Morphine"
            surveyq3.isHidden = false
            headbutton.isHidden = false
            armbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }
        if medicines[row] == medicines[2] {
            selectedmed.isHidden = false
            selectedmed.text = "Oxycodone"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }

        if medicines[row] == medicines[3] {
            selectedmed.isHidden = false
            selectedmed.text = "Acetaminophen"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }
        if medicines[row] == medicines[4] {
            selectedmed.isHidden = false
            selectedmed.text = "Tramadol"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }
        if medicines[row] == medicines[5] {
            selectedmed.isHidden = false
            selectedmed.text = "Carisoprodol"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }
        if medicines[row] == medicines[6] {
            selectedmed.isHidden = false
            selectedmed.text = "Cyclobenzaprine"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }
        if medicines[row] == medicines[7] {
            selectedmed.isHidden = false
            selectedmed.text = "Codeine"
            surveyq3.isHidden = false
            armbutton.isHidden = false
            headbutton.isHidden = false
            legbutton.isHidden = false
            footbutton.isHidden = false
            handbutton2.isHidden = false
            nothing.isHidden = false
        }
    }
    func imageButtonTapped(_sender:UIButton!) {
        surveyq2.isHidden = false
        tookmed.isHidden = false
        nottookmed.isHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
>>>>>>> 77f6f17bf42b0e36918fa434e9c76e00613920a8
}
