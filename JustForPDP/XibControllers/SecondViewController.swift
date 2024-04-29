//
//  SecondViewController.swift
//  JustForPDP
//
//  Created by Samandar on 25/04/24.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var emailtextField: UITextField!
    

    @IBOutlet weak var passwordtextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        gettingReady()
    }

    
    
    
    
    

    //Methods
    
    
    func gettingReady() {
        
        let gestureOfEndingTyping = UITapGestureRecognizer(target: self, action: #selector(endTyping))
        
        view.addGestureRecognizer(gestureOfEndingTyping)
    }
    
    
    
    @IBAction func signing(_ sender: Any) {
        
        guard let emailtext = emailtextField.text,let passwordtext = passwordtextField.text else {return}
        guard !emailtext.isEmpty, !passwordtext.isEmpty else {
            resultLabel.text = "You're not completed yet"
            return
        }
        
        resultLabel.text = "Email: \(emailtext), password: \(passwordtext)"
        
    }
    
    @objc func endTyping() {
        
        view.endEditing(true)
    }
    
    
    

}
