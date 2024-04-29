//
//  FirstJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 24/04/24.
//

import UIKit

class FirstJustViewController: UIViewController {

    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello hello Sir"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.backgroundColor = .orange
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter the name"
        textField.font = UIFont(name: "Bold", size: 20)
        textField.backgroundColor = .lightGray
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    let nameButton: UIButton =  {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Greet", for: UIControl.State.normal)
        button.backgroundColor = .red
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gettingReady()
    }
    
    
    
    //Functions
    
    func gettingReady() {
        
        view.backgroundColor = .blue
        
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(nameButton)
        
        nameButton.addTarget(self, action: #selector(greet), for: .touchUpInside)
        
        let tabnameGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestFunc))
        view.addGestureRecognizer(tabnameGesture)
        
        settingAnchors()
    }
    
    
    func settingAnchors() {
        
        
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -20).isActive = true
        
        
        nameTextField.leftAnchor.constraint(equalTo: nameLabel.leftAnchor).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: nameLabel.rightAnchor).isActive = true
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 50).isActive = true
        
        nameButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -40).isActive = true
        nameButton.leftAnchor.constraint(equalTo: nameLabel.leftAnchor).isActive = true
        nameButton.rightAnchor.constraint(equalTo: nameLabel.rightAnchor).isActive = true
        
        
    }//Anchors
    
    @objc func tapGestFunc() {
        view.endEditing(true)
    }//gesturef
    
    @objc func greet() {
        guard let text = nameTextField.text, !text.isEmpty else { return }
               nameLabel.text = "Hello \(text)"
    }//GreetFunc
    
}
