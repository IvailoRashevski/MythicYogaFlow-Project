//
//  SecondViewController.swift
//  TestingComponents
//
//  Created by Ivailo Rashevski on 23/03/17.
//  Copyright © 2017 Ivailo Rashevski. All rights reserved.
//

import UIKit
import FirebaseAuth
import AVKit
import AVFoundation

var value : Int? = 10








class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    @IBOutlet weak var userImgOutlet: UIImageView!
    @IBOutlet weak var menuImgOutlet: UIImageView!
    
    @IBAction func camBtn(_ sender: Any) { //pistol button
        
        let userImg = UIImagePickerController()
        
        userImg.delegate = self
        userImg.sourceType = UIImagePickerControllerSourceType.camera
        userImg.allowsEditing = false
        
        self.present(userImg, animated: true){
            //code for after compleate
        }
    }
    
    @IBAction func galeryBtn(_ sender: Any) { //pistol button
        
        let userImg = UIImagePickerController()
        
        userImg.delegate = self
        userImg.sourceType = UIImagePickerControllerSourceType.photoLibrary
        userImg.allowsEditing = false
        
        self.present(userImg, animated: true){
            //code for after compleate
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let userImg = info [UIImagePickerControllerOriginalImage] as? UIImage{
            userImgOutlet.image = userImg
        }else {
            //error message
        }
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func logOutBtn(_ sender: Any) { //pistol button
   
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "success2", sender: self)
    }
    
    @IBAction func mythsBtn(_ sender: UIButton) {
        
        sender.tag += 1
        if sender.tag > 1 {
            sender.tag = 0
        }
        switch sender.tag {
        case 1:
            btpBtnOutlet.isHidden = false
            genshaBtnOutlet.isHidden = false
            lakshmiBtnOutlet.isHidden = false
            saraswatiBtnOutlet.isHidden = false
            agniBtnOutlet.isHidden = false
            virabhadaBtnOutlet.isHidden = false
            durgaBtnOutlet.isHidden = false
            shivaBtnOutlet.isHidden = false
            krihnaBtnOutlet.isHidden = false
            natarayaBtnOutlet.isHidden = false
            hunmanBtnOutlet.isHidden = false
            gayatriBtnOutlet.isHidden = false
            kaliBtnOutlet.isHidden = false
            taraBtnOutlet.isHidden = false
            buddhaBtnOutlet.isHidden = false
            //closeBtnOutlet.isHidden = false
            menuImgOutlet.isHidden = false


            
        default:
            btpBtnOutlet.isHidden = true
            genshaBtnOutlet.isHidden = true
            lakshmiBtnOutlet.isHidden = true
            saraswatiBtnOutlet.isHidden = true
            agniBtnOutlet.isHidden = true
            virabhadaBtnOutlet.isHidden = true
            durgaBtnOutlet.isHidden = true
            shivaBtnOutlet.isHidden = true
            krihnaBtnOutlet.isHidden = true
            natarayaBtnOutlet.isHidden = true
            hunmanBtnOutlet.isHidden = true
            gayatriBtnOutlet.isHidden = true
            kaliBtnOutlet.isHidden = true
            taraBtnOutlet.isHidden = true
            buddhaBtnOutlet.isHidden = true
            //closeBtnOutlet.isHidden = true
            menuImgOutlet.isHidden = true
           
        }
    }
    @IBOutlet weak var Button: UIButton! //open menu outlet button (myths)
    
    
    
    //Can be removed all IBAction from followed buttons
    @IBAction func btpBtn(_ sender: Any) {
            let videoURL = NSURL(string: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/15_BODY_TEMPLE_PRAYER/15_BODY_TEMPLE_PRAYER_1280x720_23.976FPS.mp4")
            self.player = AVPlayer(url: videoURL as! URL)
            self.playerController.player = self.player
            self.present(self.playerController, animated: true, completion: {
                self.playerController.player?.play()
            })
    }
    @IBOutlet weak var btpBtnOutlet: UIButton!
    
    
    @IBAction func ganeshaBtn(_ sender: Any) {
    }
    @IBOutlet weak var genshaBtnOutlet: UIButton!
    
    
    @IBAction func lakshmiBtn(_ sender: Any) {
    }
    @IBOutlet weak var lakshmiBtnOutlet: UIButton!
    
    
    @IBAction func saraswatiBtn(_ sender: Any) {
    }
    @IBOutlet weak var saraswatiBtnOutlet: UIButton!
    
    
    @IBAction func agniBtn(_ sender: Any) {
    }
    @IBOutlet weak var agniBtnOutlet: UIButton!
    
    
    @IBAction func virabhadaBtn(_ sender: Any) {
    }
    @IBOutlet weak var virabhadaBtnOutlet: UIButton!
    
    
    @IBAction func durgaBtn(_ sender: Any) {
    }
    @IBOutlet weak var durgaBtnOutlet: UIButton!
    
    
    @IBAction func shivaBtn(_ sender: Any) {
    }
    @IBOutlet weak var shivaBtnOutlet: UIButton!
    
    
    @IBAction func krihnaBtn(_ sender: Any) {
    }
    @IBOutlet weak var krihnaBtnOutlet: UIButton!
    
    
    @IBAction func natarayaBtn(_ sender: Any) {
    }
    @IBOutlet weak var natarayaBtnOutlet: UIButton!
    
    
    @IBAction func hanumanBtn(_ sender: Any) {
    }
    @IBOutlet weak var hunmanBtnOutlet: UIButton!
    
    
    @IBAction func gayatriBtn(_ sender: Any) {
    }
    @IBOutlet weak var gayatriBtnOutlet: UIButton!
    
    
    @IBAction func kaliBtn(_ sender: Any) {
    }
    @IBOutlet weak var kaliBtnOutlet: UIButton!
    
    
    @IBAction func taraBtn(_ sender: Any) {
    }
    @IBOutlet weak var taraBtnOutlet: UIButton!
    
    
    @IBAction func buddhaBtn(_ sender: Any) {
    }
    @IBOutlet weak var buddhaBtnOutlet: UIButton!
    
    // we do not need close button in case if we use double click myths btn
    // remember to remove the button and all outlet and actions from
    //storyboard before delete the code in controllers
    //look carefull for other usage of close btn in code
 
   /* @IBAction func closeBtn(_ sender: Any) {
        btpBtnOutlet.isHidden = true
        genshaBtnOutlet.isHidden = true
        lakshmiBtnOutlet.isHidden = true
        saraswatiBtnOutlet.isHidden = true
        agniBtnOutlet.isHidden = true
        virabhadaBtnOutlet.isHidden = true
        durgaBtnOutlet.isHidden = true
        shivaBtnOutlet.isHidden = true
        krihnaBtnOutlet.isHidden = true
        natarayaBtnOutlet.isHidden = true
        hunmanBtnOutlet.isHidden = true
        gayatriBtnOutlet.isHidden = true
        kaliBtnOutlet.isHidden = true
        taraBtnOutlet.isHidden = true
        buddhaBtnOutlet.isHidden = true
        closeBtnOutlet.isHidden = true
        menuImgOutlet.isHidden = true
    }
 
    @IBOutlet weak var closeBtnOutlet: UIButton!
 */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //buttons(myths) settings up to...
        self.Button.layer.cornerRadius = 5
        self.Button.layer.masksToBounds = true
        self.Button.layer.borderColor = UIColor.white.cgColor
        self.Button.layer.borderWidth = 1
        //...here!
        // Do any additional setup after loading the view.
        btpBtnOutlet.isHidden = true
        genshaBtnOutlet.isHidden = true
        lakshmiBtnOutlet.isHidden = true
        saraswatiBtnOutlet.isHidden = true
        agniBtnOutlet.isHidden = true
        virabhadaBtnOutlet.isHidden = true
        durgaBtnOutlet.isHidden = true
        shivaBtnOutlet.isHidden = true
        krihnaBtnOutlet.isHidden = true
        natarayaBtnOutlet.isHidden = true
        hunmanBtnOutlet.isHidden = true
        gayatriBtnOutlet.isHidden = true
        kaliBtnOutlet.isHidden = true
        taraBtnOutlet.isHidden = true
        buddhaBtnOutlet.isHidden = true
        //closeBtnOutlet.isHidden = true
        menuImgOutlet.isHidden = true
        
        //user image gets rounded shape
        userImgOutlet.layer.cornerRadius = userImgOutlet.frame.size.width/2
        userImgOutlet.clipsToBounds = true
        
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
