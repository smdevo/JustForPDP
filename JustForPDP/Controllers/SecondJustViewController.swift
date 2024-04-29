//
//  SecondJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 25/04/24.
//

import UIKit

class SecondJustViewController: UIViewController {
    
    private let resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Please Write it down Sir"
        label.numberOfLines = 4
        label.font = UIFont(name: "normal", size: 22)
        label.backgroundColor = .green
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.font = UIFont(name: "normal", size: 20)
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = .systemGray5
        textfield.placeholder = "Email"
        textfield.keyboardType = .emailAddress
        return textfield
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.font = UIFont(name: "normal", size: 20)
        return label
    }()
    
    private let passwordtTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = .systemGray5
        textfield.placeholder = "Password"
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    private let signInButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Sign In", for: UIControl.State.normal)
    button.backgroundColor = .blue
    button.layer.cornerRadius = 10
    button.clipsToBounds = true
    return button
}()
    
    private let enterignStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.distribution = .fillEqually
        return stackview
    }()
    
    private let fullStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.spacing = 20
        return stackview
    }()
    
    
    
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gettignReady()
    }
    
    
    
    func gettignReady(){
        
        let endEndingGesture = UITapGestureRecognizer(target: self, action: #selector(endTyping))
        view.addGestureRecognizer(endEndingGesture)
        
        signInButton.addTarget(self, action: #selector(signing), for: .touchUpInside)
        
        view.addSubview(resultLabel)
        view.addSubview(fullStackView)
        
        enterignStackView.addArrangedSubview(emailLabel)
        enterignStackView.addArrangedSubview(emailTextField)
        enterignStackView.addArrangedSubview(passwordLabel)
        enterignStackView.addArrangedSubview(passwordtTextField)
        
        
        fullStackView.addArrangedSubview(enterignStackView)
        fullStackView.addArrangedSubview(signInButton)
        
        
        settingConstrains()
    }
    
    
    
    
    func settingConstrains() {
        
        resultLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20).isActive = true
        resultLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        resultLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
        fullStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        fullStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        fullStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        fullStackView.heightAnchor.constraint(equalToConstant: 310).isActive = true
        
        signInButton.leftAnchor.constraint(equalTo: fullStackView.leftAnchor).isActive = true
        signInButton.rightAnchor.constraint(equalTo: fullStackView.rightAnchor).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        enterignStackView.leftAnchor.constraint(equalTo: fullStackView.leftAnchor).isActive = true
        enterignStackView.rightAnchor.constraint(equalTo: fullStackView.rightAnchor).isActive = true
        
        emailLabel.leftAnchor.constraint(equalTo: enterignStackView.leftAnchor).isActive = true
        emailLabel.rightAnchor.constraint(equalTo: enterignStackView.rightAnchor).isActive = true

        emailTextField.leftAnchor.constraint(equalTo: enterignStackView.leftAnchor).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: enterignStackView.rightAnchor).isActive = true
        
        passwordLabel.leftAnchor.constraint(equalTo: enterignStackView.leftAnchor).isActive = true
        passwordLabel.rightAnchor.constraint(equalTo: enterignStackView.rightAnchor).isActive = true
        
        passwordtTextField.leftAnchor.constraint(equalTo: enterignStackView.leftAnchor).isActive = true
        passwordtTextField.rightAnchor.constraint(equalTo: enterignStackView.rightAnchor).isActive = true
        
    }
    
    @objc func signing() {
        
      //  print("Working")
        
        guard let emailtext = emailTextField.text,let passwordtext = passwordtTextField.text else {return}
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
