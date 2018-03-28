//
//  ViewController.swift
//  SuperSenha
//
//  Created by Hedellen Fernandes on 21/02/2018.
//  Copyright © 2018 Hedellen Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpacialCaracters: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordViewController = segue.destination as! PasswordViewController

        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordViewController.numberOfCharacters = numberOfCharacters
        }
        
        passwordViewController.useLetters = swLetters.isOn
        passwordViewController.useNumbers = swNumbers.isOn
        passwordViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordViewController.useSpecialCharacters = swSpacialCaracters.isOn
        
        view.endEditing(true)
    }
}

