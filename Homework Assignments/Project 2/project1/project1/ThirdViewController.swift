//
//  ThirdViewController.swift
//  project1
//
//  Created by Jake on 11/1/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit
import CoreData

class ThirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var results:[Counter] = []

    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {


        return results.count

    }

    // TODO: Make sure this fires when the other VC is dismissed
    override func viewDidAppear(_ animated: Bool) {
        let fetchRequest:NSFetchRequest = Counter.fetchRequest()

        do{
           results = try (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext.fetch(fetchRequest) as! [Counter]
            tableView.reloadData()
        }
        catch{
            print("error!")
        }

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")

        let currentMeeting = results[indexPath.row]
        cell?.textLabel?.text = currentMeeting.name

        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addMeetingTapped(_ sender: Any) {
        let meetingViewController = storyboard?.instantiateViewController(identifier: "MeetingViewController")
        present(meetingViewController!, animated: true, completion: nil)
    }
   }

