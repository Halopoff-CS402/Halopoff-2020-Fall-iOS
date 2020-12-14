//
//  ShapeStoreViewController.swift
//  finalproject
//
//  Created by Jake on 12/13/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit
import AVFoundation

class ShapeStoreViewController: UIViewController {
    
    var score: Int = 0
    var counter: Int = 0
    var numCube: Int = 0
    var numGem: Int = 0
    var numGeoid: Int = 0
    var numPowerstone: Int = 0
    var numPrism: Int = 0
    var numPyramid: Int = 0
    var numTrapezoid: Int = 0
    var numTriangle: Int = 0
    var tapSoundEffect: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score: \(String(score))"
        let sound = Bundle.main.path(forResource: "zapsplat_multimedia_game_tone_short_bright_futuristic_beep_with_delay_action_tone_001_59162", ofType: "mp3")
        do {
            tapSoundEffect = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            //couldn't load
        }
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func squareBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numCube = Int16(numCube + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
        
    }
    @IBAction func triangleBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numTriangle = Int16(numTriangle + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
    }
    @IBAction func trapezoidBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numTrapezoid = Int16(numTrapezoid + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
    }
    @IBAction func pyramidBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numPyramid = Int16(numPyramid + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
    }
    @IBAction func geoidBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numGeoid = Int16(numGeoid + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
    }
    @IBAction func prismBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numPrism = Int16(numPrism + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
    }
    @IBAction func gemBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numGem = Int16(numGem + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
    }
    @IBAction func powerStoneBuy(_ sender: Any) {
        if score > 1 {
        tapSoundEffect?.play()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Shapes(context: managedObjectContext)
        user.numPowerstone = Int16(numPowerstone + 1)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        }
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
