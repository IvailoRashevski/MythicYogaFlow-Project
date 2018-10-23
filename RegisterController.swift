//
//  RegisterController.swift
//  TestingComponents
//
//  Created by Ivailo Rashevski on 24/05/17.
//  Copyright © 2017 Ivailo Rashevski. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterController: UIViewController {

    
    @IBOutlet weak var userName: UITextField!
    
    
    @IBOutlet weak var passWord: UITextField!
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var register: UIButton!
    @IBAction func register(_ sender: UIButton) {
    
        FIRAuth.auth()?.createUser(withEmail: userName.text!, password: passWord.text!, completion: { (user, error) in
            
            if error != nil{
                print(error!)
                return
            }
            
            self.createAlert(title: "Congratulations", message: "You have been registered succesfully!")
        })
        
    }
    
    func createAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backBtn.layer.cornerRadius = 7
        self.backBtn.layer.masksToBounds = true
        
        self.register.layer.cornerRadius = 7
        self.register.layer.masksToBounds = true
        
        self.userName.layer.cornerRadius = 5
        self.userName.layer.borderColor = UIColor.white.cgColor
        self.userName.layer.borderWidth = 0.5
        
        self.passWord.layer.cornerRadius = 5
        self.passWord.layer.borderColor = UIColor.white.cgColor
        self.passWord.layer.borderWidth = 0.5

        // Do any additional setup after loading the view.
    }

}
