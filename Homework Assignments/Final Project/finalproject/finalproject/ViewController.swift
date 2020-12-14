//
//  ViewController.swift
//  finalproject
//
//  Created by Jake on 12/13/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var counter = 0
    var numTriangle = 0
    var numCircle = 0
    var numSquare = 0
    var pointTimer = Timer()
    var TimerDisplayed = 0
    var tapSoundEffect: AVAudioPlayer?
    
    
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var pointsPerClickLabel: UILabel!
    @IBOutlet weak var pointsPerSecondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        let sound = Bundle.main.path(forResource: "zapsplat_multimedia_game_tone_short_bright_futuristic_beep_with_delay_action_tone_001_59162", ofType: "mp3")
        do {
            tapSoundEffect = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            //couldn't load
        }
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        tapSoundEffect?.play() 
        counter += 1
        counterLabel.text = "Points: \(counter)"
        
    }
    @objc func Action() {
        counter += (numTriangle + numCircle + numSquare)
    }

}

