//
//  ForgotPassController.swift
//  TestingComponents
//
//  Created by Ivailo Rashevski on 24/05/17.
//  Copyright © 2017 Ivailo Rashevski. All rights reserved.
//

import UIKit
import FirebaseAuth

class ForgotPassController: UIViewController {
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var backBtn: UIButton!
    

    @IBOutlet weak var resetPassword: UIButton!
    @IBAction func resetPassword(_ sender: Any) {
        FIRAuth.auth()?.sendPasswordReset(withEmail: email.text!, completion: {(error)in
            if error == nil{
                print("We have sent you mail with instructions.")
                self.createAlert(title: "Check your e-mail", message: "We have sent you e-mail with instructions." )
            }
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
        
        self.resetPassword.layer.cornerRadius = 7
        self.resetPassword.layer.masksToBounds = true
        
        self.backBtn.layer.cornerRadius = 7
        self.backBtn.layer.masksToBounds = true
        
        self.email.layer.cornerRadius = 5
        self.email.layer.borderColor = UIColor.white.cgColor
        self.email.layer.borderWidth = 0.5

        // Do any additional setup after loading the view.
    }

}
