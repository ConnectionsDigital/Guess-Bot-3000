//
//  ViewController.swift
//  GuessingGame
//
//  Created by Kenneth W Jackson on 11/2/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomInteger = 0
 
   //Field where user chooses a numbser betwwen 1 and `10
    @IBOutlet weak var fldGuess: UITextField!
    
    //Go Button
    @IBAction func btnGo(_ sender: Any) {
        //Select random number between 1 and 10
        randomInteger = Int(arc4random_uniform(10) + 1)
        var answer = 0
        answer = randomInteger
       //See if the user input is equal to the random number and display the result.
        if String(answer) == fldGuess.text {
            print("\(answer), You are right!")
            lblMessage.text = ("You are right! \r The number is \(answer)! \r We have a winner!")
        } else {
            print("\(answer), You are wrong!")
            lblMessage.text = (" You are wrong! \r The number is \(answer). \r Try again?")
        }
    }
    //Message Label
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

