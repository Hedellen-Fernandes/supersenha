//
//  PasswordViewController.swift
//  SuperSenha
//
//  Created by Hedellen Fernandes on 21/02/2018.
//  Copyright © 2018 Hedellen Fernandes. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas: \(numberOfPasswords)"
        
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfPasswords, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
    }
    
    func generatePasswords() {
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        
        print(numberOfPasswords)
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        print(passwords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }
    
    
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
}
