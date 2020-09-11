//
//  SecondViewController.swift
//  homework1
//
//  Created by user179757 on 9/10/20.
//  Copyright © 2020 JakeApps. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func concatTapped(_ sender: Any) {
        let concatenatedString = "Hello \(firstNameTextField.text!) \(lastNameTextField.text!), it's very nice to meet you."
        
        outputLabel.text = concatenatedString
        
    }
    
}

