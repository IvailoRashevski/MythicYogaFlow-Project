//
//  GaytariViewController.swift
//  TestingComponents
//
//  Created by Ivailo Rashevski on 27/03/17.
//  Copyright © 2017 Ivailo Rashevski. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class GaytariViewController: UIViewController {

    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    @IBOutlet weak var mvmBtnOutlet: UIButton!
    
    @IBAction func mvmBtn(_ sender: Any) {
        playerFunc(url: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/10_GAYATRI/10_GAYATRI_MOVEMENT_1280x720_23.976FPS.mp4")
    }
    
    
    @IBOutlet weak var mythBtnOutlet: UIButton!
    
    @IBAction func mythBtn(_ sender: Any) {
        playerFunc(url: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/10_GAYATRI/10_GAYATRI_MYTH_1280x720_23.976FPS.mp4")
    }
    
    
    @IBOutlet weak var mudraBtnOutlet: UIButton!
    
    @IBAction func mudraBtn(_ sender: Any) {
        playerFunc(url: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/10_GAYATRI/10_GAYATRI_MUDRA_1280x720_23.976FPS.mp4")
    }
    
    
    @IBOutlet weak var pyaBtnOutlet: UIButton!
    
    @IBAction func pyaBtn(_ sender: Any) {
        playerFunc(url: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/10_GAYATRI/10_GAYATRI_PRANAYAMA_1280x720_23.976FPS.mp4")
    }
    
    
    @IBOutlet weak var mantraBtnOutlet: UIButton!
    
    @IBAction func mantraBtn(_ sender: Any) {
        playerFunc(url: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/10_GAYATRI/10_GAYATRI_MANTRA_1280x720_23.976FPS.mp4")
    }
    
    
    @IBOutlet weak var tipBtnOutlet: UIButton!
    
    @IBAction func tipBtn(_ sender: Any) {
        playerFunc(url: "https://storage.googleapis.com/mythic-yoga-flow/Content/videos/10_GAYATRI/10_GAYATRI_TEACHING_TIP_1280x720_23.976FPS.mp4")
    }
    
    
    @IBOutlet weak var backBtnOutlet: UIButton!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.mvmBtnOutlet.layer.cornerRadius = 7
        self.mvmBtnOutlet.layer.masksToBounds = true
        self.mythBtnOutlet.layer.cornerRadius = 7
        self.mythBtnOutlet.layer.masksToBounds = true
        self.mudraBtnOutlet.layer.cornerRadius = 7
        self.mudraBtnOutlet.layer.masksToBounds = true
        self.pyaBtnOutlet.layer.cornerRadius = 7
        self.pyaBtnOutlet.layer.masksToBounds = true
        self.mantraBtnOutlet.layer.cornerRadius = 7
        self.mantraBtnOutlet.layer.masksToBounds = true
        self.tipBtnOutlet.layer.cornerRadius = 7
        self.tipBtnOutlet.layer.masksToBounds = true
        self.backBtnOutlet.layer.cornerRadius = 7
        self.backBtnOutlet.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playerFunc(url: String) {
        
        let videoURL = NSURL(string: url)
        self.player = AVPlayer(url: videoURL as! URL)
        self.playerController.player = self.player
        self.present(self.playerController, animated: true, completion: {
            self.playerController.player?.play()
        })
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
