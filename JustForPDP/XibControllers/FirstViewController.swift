//
//  FirstViewController.swift
//  JustForPDP
//
//  Created by Samandar on 24/04/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var getNameTextfield: UITextField!
    
    
    @IBOutlet weak var greetingButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        gettingReadyView()
        
    }
    
    func gettingReadyView() {
        
        view.backgroundColor = .yellow
        
        getNameTextfield.placeholder = "Enter Name"
        nameLabel.text = "Hello hello world"
        greetingButton.setTitle("Greet", for: UIControl.State.normal)
        
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(dismisstheKeyboard))
        view.addGestureRecognizer(tapGesture1)
    }

    
    
    
    //Functions

   
    @IBAction func getNameToLabelFromTextField(_ sender: Any) {
        
        guard !(getNameTextfield.text?.isEmpty ?? false) else {return}
        
        nameLabel.text = "Hello \(getNameTextfield.text ?? "World")"
        
    }
    
    @objc func dismisstheKeyboard() {
        view.endEditing(true)
    }
    

}
