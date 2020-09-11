//
//  FirstViewController.swift
//  homework1
//
//  Created by user179757 on 9/10/20.
//  Copyright © 2020 JakeApps. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var OurTimer = Timer()
    var TimerDisplayed = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Label: UILabel!
    
    
    @IBAction func StartBTN(_ sender: Any) {
        OurTimer.invalidate()
        OurTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    @objc func Action() {
        TimerDisplayed += 1
        Label.text = String(TimerDisplayed)
    }
    
    @IBAction func PauseBTN(_ sender: Any) {
        self.OurTimer.invalidate()
    }
    
    
    @IBAction func ResetBTN(_ sender: Any) {
        self.OurTimer.invalidate()
        TimerDisplayed = 0
        Label.text = "0"
    }
    
}

