//
//  ThirdViewController.swift
//  project1
//
//  Created by Jake on 11/1/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

       @IBOutlet weak var tableView: UITableView!

       let animals: [String] = ["Circle", "Square", "Triangle", "Octagon", "Pentagon"]
       
       let cellReuseIdentifier = "cell"
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
           
           tableView.delegate = self
           tableView.dataSource = self
       }
       
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return self.animals.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           
        let cell:UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
           
          
           cell.textLabel?.text = self.animals[indexPath.row]
           
           return cell
       }
       
              func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           print("You tapped cell number \(indexPath.row).")
       }
   }

