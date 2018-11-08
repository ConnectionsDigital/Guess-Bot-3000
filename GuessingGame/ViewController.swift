//
//  ViewController.swift
//  GuessingGame
//
//  Created by Kenneth W Jackson on 11/2/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var answer = 0
    var randomInteger = 0
   
    //Field where user chooses a numbser betwwen 1 and `10
    @IBOutlet weak var fldGuess: UITextField!
    
    //Go Button
    @IBAction func btnGo(_ sender: Any) {
        
        //Generates a random number between 1 and 10
        //randomInteger = Int(arc4random_uniform(10) + 1) //xCode 9
        randomInteger = Int.random(in: 1 ... 10) //xCode 10
        answer = randomInteger
        
        //Field Verification
        let guess = fldGuess.text
        
        if(guess!.isEmpty) {
            let myAlert = UIAlertController(title: "Alert", message: "You must select a number between 1 and 10", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            myAlert.addAction(okAction)
           
            self.present(myAlert, animated: true, completion: nil)
            return
        }
        
        //See if the user input is equal to the random number and display the result.
        if String(answer) == fldGuess.text {
            print("\(answer), You are right!")
            lblMessage.text = ("You are right! \r The number is \(answer)! \r We have a winner!")
            fldGuess.text = ""
        } else {
            print("\(answer), You are wrong!")
            lblMessage.text = (" You are wrong! \r The number is \(answer). \r Try again?")
            fldGuess.text = ""
        }
    }
    
    //} else {
    // lblMessage.text = ("Please enter a number")
    //}
    
    
    //Message Label
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Use numeric keypad that disapears when you touch the screen outside of the keypad.
        fldGuess.keyboardType = .numberPad
        self.hideKeyboardWhenTappedAround()
    }
}

