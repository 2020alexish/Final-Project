//
//  AvatarViewController.swift
//  FinalProject
//
//  Created by Noa Levine-20 on 8/10/18.
//  Copyright © 2018 Alexis Hedvat-20. All rights reserved.
//

import UIKit

class AvatarViewController: UIViewController {
    
    @IBOutlet weak var yah: UILabel!
    @IBOutlet weak var chooseanavatar: UILabel!
    @IBOutlet weak var avatar: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rabbit = UIButton()
        let img1 = UIImage(named: "rabbitavatar.png")!
        rabbit.frame = CGRect(x: 20, y:190, width:180, height:180)
        rabbit.setBackgroundImage(img1
            , for: UIControlState.normal)
        self.view.addSubview(rabbit)
        rabbit.addTarget(self, action:#selector(AvatarViewController.rabbitButtonTapped), for: .touchUpInside)
        
        let hippo = UIButton()
        let img2 = UIImage(named: "hippo.png")!
        hippo.frame = CGRect(x: 250, y:190, width:180, height:180)
        hippo.setBackgroundImage(img2, for: UIControlState.normal)
        self.view.addSubview(hippo)
        hippo.addTarget(self, action:#selector(AvatarViewController.hippoButtonTapped), for: .touchUpInside)

        let lion = UIButton()
        let img4 = UIImage(named: "lion.png")!
        lion.frame = CGRect(x: 250, y:340, width:180, height:180)
        lion.setBackgroundImage(img4, for: UIControlState.normal)
        self.view.addSubview(lion)
        lion.addTarget(self, action:#selector(AvatarViewController.lionButtonTapped), for: .touchUpInside)

        
        let monkey = UIButton()
        let img3 = UIImage(named: "monkey.png")!
        monkey.frame = CGRect(x: 15, y:340, width:190, height:190)
        monkey.setBackgroundImage(img3, for: UIControlState.normal)
        self.view.addSubview(monkey)
        monkey.addTarget(self, action:#selector(AvatarViewController.monkeyButtonTapped), for: .touchUpInside)

        
        let penguin = UIButton()
        let img5 = UIImage(named: "penguin.png")!
        penguin.frame = CGRect(x: 250, y:490, width:170, height:170)
        penguin.setBackgroundImage(img5, for: UIControlState.normal)
        self.view.addSubview(penguin)
        penguin.addTarget(self, action:#selector(AvatarViewController.penguinButtonTapped), for: .touchUpInside)

        let fox = UIButton()
        let img6 = UIImage(named: "fox.png")!
        fox.frame = CGRect(x: 15, y:490, width:210, height:210)
        fox.setBackgroundImage(img6, for: UIControlState.normal)
        self.view.addSubview(fox)
        fox.addTarget(self, action:#selector(AvatarViewController.foxButtonTapped), for: .touchUpInside)


        // Do any additional setup after loading the view.
    }
    func rabbitButtonTapped (_sender:UIButton!) {
        avatar.image = UIImage(named: "rabbitavatar.png")!
        yah.isHidden = true
    }

    func hippoButtonTapped (_sender:UIButton!) {
        avatar.image = UIImage(named: "hippo.png")!
        yah.isHidden = true

    }

    func monkeyButtonTapped (_sender:UIButton!) {
        avatar.image = UIImage(named: "monkey.png")!
        yah.isHidden = true

    }
    func penguinButtonTapped (_sender:UIButton!) {
        avatar.image = UIImage(named: "penguin.png")!
        yah.isHidden = true
        
    }
    func foxButtonTapped (_sender:UIButton!) {
        avatar.image = UIImage(named: "fox.png")!

    }
    func lionButtonTapped (_sender:UIButton!) {
        avatar.image = UIImage(named: "lion.png")!
        yah.isHidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
