//
//  ViewController.swift
//  finalproject
//
//  Created by Jake on 12/13/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    var numTriangle = 1
    var numCircle = 0
    var numSquare = 0
    var pointTimer = Timer()
    var TimerDisplayed = 0
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: Any) {
        counter += 1
        counterLabel.text = "Points: \(counter)"
        
    }
    @objc func Action() {
        counter += (numTriangle + numCircle + numSquare)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }


}

