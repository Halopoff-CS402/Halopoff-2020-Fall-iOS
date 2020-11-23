//
//  MeetingViewController.swift
//  project1
//
//  Created by Jake on 11/23/20.
//  Copyright © 2020 Jake. All rights reserved.

import UIKit
import CoreData

class MeetingViewController: UIViewController {

    @IBOutlet weak var meetingTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        let managedObjectContext = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext

        let newMeeting = Counter(context: managedObjectContext!)
        newMeeting.name = meetingTitle.text

        dismiss(animated: true) {
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        }
    }
}
