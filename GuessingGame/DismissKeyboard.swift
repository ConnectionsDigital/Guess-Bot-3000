//
//  File.swift
//  GuessingGame
//
//  Created by Kenneth W Jackson on 11/4/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

// Call in viewDidLoad of any view controller there are textFields.

//self.hideKeyboardWhenTappedAround()
