//
//  ShapeStoreViewController.swift
//  finalproject
//
//  Created by Jake on 12/13/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit

class ShapeStoreViewController: UIViewController {
    
    var score: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func squareBuy(_ sender: Any) {
        
    }
    @IBAction func triangleBuy(_ sender: Any) {
    }
    @IBAction func trapezoidBuy(_ sender: Any) {
    }
    @IBAction func pyramidBuy(_ sender: Any) {
    }
    @IBAction func geoidBuy(_ sender: Any) {
    }
    @IBAction func prismBuy(_ sender: Any) {
    }
    @IBAction func gemBuy(_ sender: Any) {
    }
    @IBAction func powerStoneBuy(_ sender: Any) {
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
