//
//  UserLoginViewController.swift
//  ExampleTBL2
//
//  Created by Mac on 17/12/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class UserLoginViewController: UIViewController {
    @IBOutlet weak var Backimg: UIImageView!
    @IBOutlet weak var BigBackImg: UIImageView!
    
    @IBOutlet weak var UserNametxt: UITextField!
    
    
    @IBOutlet weak var Passwordtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(vc, animated: false)
            
        }
        
        
       
    }
    

        @IBAction func AuthenticateUser(_ sender: Any) {
        
        if UserNametxt.text == "mosin" &&  Passwordtxt.text == "12345"{
            
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }
    }
    

}
