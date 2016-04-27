//
//  ViewController.swift
//  guessingGame
//
//  Created by Kaylan Smith on 4/26/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessNum(sender: AnyObject) {
        // let is used to define variables that never change
        // UInt32 is a big integer
        // Set type to string to be able to compare with user input
        let fingersUp = String(arc4random_uniform(6))
        
        if userGuessTextField.text == "" {
            resultLabel.text = "Please enter a number."
        } else if fingersUp == userGuessTextField.text {
            resultLabel.text = "You're right!"
        } else {
            resultLabel.text = "Wrong! It was " + fingersUp
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

