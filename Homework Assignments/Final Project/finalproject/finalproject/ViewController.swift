//
//  ViewController.swift
//  finalproject
//
//  Created by Jake on 12/13/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit
import AVFoundation
import CoreData

class ViewController: UIViewController {
    
    var counter: Int = 0
    var numTriangle = 0
    var numCircle = 0
    var numSquare = 0
    var pointTimer = Timer()
    var TimerDisplayed = 0
    var tapSoundEffect: AVAudioPlayer?
    var results:[Player] = []
    
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
        let fetchRequest:NSFetchRequest = Player.fetchRequest()

        do{
           results = try (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext.fetch(fetchRequest) as! [Player]
            for res in results {
                counter = Int(res.score)
            }
        }
        catch{
            print("error!")
        }
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        tapSoundEffect?.play() 
        counter += 1
        counterLabel.text = "Points: \(counter)"
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        let user = Player(context: managedObjectContext)
        user.score = Int16(counter)
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            print("Could not save. \(error),\(error.userInfo)")
        }
        
    }
    @objc func Action() {
        counter += (numTriangle + numCircle + numSquare)
    }
    
    @IBAction func shapeStoreButton(_ sender: Any) {
       performSegue(withIdentifier: "name", sender: self)
        
    }
    @IBAction func upgradeButton(_ sender: Any) {
        performSegue(withIdentifier: "upgrade", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ShapeStoreViewController {
            var vc = segue.destination as! ShapeStoreViewController
            vc.score = counter
        }
    }
    
}

