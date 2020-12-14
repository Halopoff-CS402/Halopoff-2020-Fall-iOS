//
//  UpgradeViewController.swift
//  finalproject
//
//  Created by Jake on 12/14/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit
import AVFoundation

class UpgradeViewController: UIViewController {
    
    var score: Int = 0
    var tapSoundEffect1: AVAudioPlayer?
    var tapSoundEffect2: AVAudioPlayer?

    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        let sound = Bundle.main.path(forResource: "star_gazing_119", ofType: "mp3")
        do {
            tapSoundEffect1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            //couldn't load
        }
        let sound2 = Bundle.main.path(forResource: "milky_way", ofType: "mp3")
        do {
            tapSoundEffect2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
        }
        catch {
            //couldn't load
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func music1Play(_ sender: Any) {
        tapSoundEffect1?.play()
    }
    

    @IBAction func music2Play(_ sender: Any) {
        tapSoundEffect2?.play()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
