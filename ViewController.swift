//
//  ViewController.swift
//  TestingComponents
//
//  Created by Ivailo Rashevski on 16/03/17.
//  Copyright © 2017 Ivailo Rashevski. All rights reserved.h
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var register: UIButton!
    
    @IBOutlet weak var userImg: UIImageView!{
        didSet{
            userImg.alpha = 0
        }
    }
    @IBOutlet weak var perdeImg: UIImageView!{
        didSet{
           perdeImg.alpha = 0
        }
    }
    @IBOutlet weak var LogInBtn: UIButton!
    

    @IBAction func logIn(_ sender: Any) {
        
        //Function for displaying alert when username or pass are wrong
        func createAlert(title: String, message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
        if usernameTxtField.text != "" && passTxtField.text != ""{
        
              //login user
            
                FIRAuth.auth()?.signIn(withEmail: usernameTxtField.text!, password: passTxtField.text!, completion: { (user, error) in
                    if user != nil{
                        self.performSegue(withIdentifier: "success", sender: self)
                        //login succesful
                    }
                    else{
                        createAlert(title:"WARNIRNG!", message: "Wrong email or password!")
                        }
                        
                    }
                )
        }
        //if possible make it with pop up bubble instead of alert
        if usernameTxtField.text == "" && passTxtField.text == ""{
            createAlert(title: "Warning", message: "Missing username & password")
        }
        if passTxtField.text == "" {
        createAlert(title: "Warning", message: "Missing password")
        }
        if usernameTxtField.text == "" {
          createAlert(title: "Warning", message: "Missing username/email")
        }
        
    }
    
    @IBOutlet weak var passTxtField: UITextField! //outlet
    @IBOutlet weak var usernameTxtField: UITextField! //outlet
    
    func perdeAnimation(){
        UIImageView.animate(withDuration: 3){
        self.perdeImg.alpha = 1
            self.userImg.alpha = 1
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.LogInBtn.layer.cornerRadius = 7
        self.LogInBtn.layer.masksToBounds = true
        //self.LogInBtn.layer.borderColor = UIColor.white.cgColor
        //self.LogInBtn.layer.borderWidth = 1
        self.usernameTxtField.layer.cornerRadius = 5
        self.usernameTxtField.layer.borderColor = UIColor.white.cgColor
        self.usernameTxtField.layer.borderWidth = 0.5
        self.passTxtField.layer.cornerRadius = 5
        self.passTxtField.layer.borderColor = UIColor.white.cgColor
        self.passTxtField.layer.borderWidth = 0.5
        perdeAnimation()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background copy.jpg")!)
        self.passTxtField.delegate = self
        self.usernameTxtField.delegate = self
        passTxtField.isSecureTextEntry = true //may be can be done from right panel menu

        
    func didClick(){
        print("did click")
    }
        

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
    //hide keyboard when user touch outside it
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hide keyboard when user press return
    //TO-DO it should automatically goes to next textfield
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTxtField.resignFirstResponder()
        passTxtField.resignFirstResponder()
        return(true)
    }
}

/*
 // Do any additional setup after loading the view, typically from a nib.
 let button:UIButton = UIButton(frame: CGRect(x:20 , y:100 , width:150 , height:40 ))
 //button.setTitle("button", for: .normal)
 //button.backgroundColor = UIColor.darkGray
 // button.setBackgroundImage(image: "rsz_0ov5wp3o_kx5uyuwq", for: .normal)
 button.setImage(UIImage.init(named: "rsz_0ov5wp3o_kx5uyuwq"), for: .normal)
 button.addTarget(self, action: #selector(didClick), for: .touchUpInside)
 UIView.animate(withDuration: 0.6, animations: {
 button.transform = CGAffineTransform.identity.scaledBy(x: 0.6, y: 0.6)
 }, completion: { (finish) in
 UIView.animate(withDuration: 0.6, animations: {
 button.transform = CGAffineTransform.identity
 })
 })
 view.addSubview(button)
 }
 */

