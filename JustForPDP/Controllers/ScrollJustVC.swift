//
//  ScrollJustVC.swift
//  JustForPDP
//
//  Created by Samandar on 30/04/24.
//

import UIKit
import Alamofire
import RealmSwift

class ScrollJustVC: UIViewController {
    
    // MARK: - Properties
    
    private let scrollView: UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            //scrollView.backgroundColor = .red
            return scrollView
        }()
    private let mainview: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            //view.backgroundColor = .lightGray
            return view
        }()
    
        
    private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 20
            stackView.translatesAutoresizingMaskIntoConstraints = false
           // stackView.backgroundColor = .blue
            return stackView
        }()
    
    
    private let instaLabel: UILabel = {
        let label = UILabel()
        label.text = "Instagram"
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your name"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .words
        return textField
    }()
    
    private let surnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Surname"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private let surnameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your surname"
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .words
        return textField
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let numberLabel: UILabel = {
        let label = UILabel()
        label.text = "Number"
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private let numberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your number"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .phonePad
        return textField
    }()
    
    private let signInButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
          
            
        return button
    }()
    
    
    
    
    // Add similar properties for other fields (seria, second number, qualification, language proficiency)
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            configureScrollView()
            configureUI()
        }
    
    // MARK: - UI Configuration
        
        private func configureScrollView() {
            view.addSubview(scrollView)
            scrollView.addSubview(mainview)
            mainview.addSubview(stackView)
            
            
            scrollView.setIntowithConst(into: self.view)
            
            mainview.setIntowithConst(into: scrollView)
            
            mainview.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
            mainview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2).isActive = true
            
            
            stackView.topAnchor.constraint(equalTo: mainview.topAnchor,constant: self.view.frame.height / 6).isActive = true
            stackView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor,constant: 20).isActive = true
            stackView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor,constant:  -20).isActive = true
            
          //  stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2).isActive = true
            
        
        }
        
        private func configureUI() {
            
            
            let tapRec = UITapGestureRecognizer(target: self, action: #selector(endTyping))
           
            mainview.addGestureRecognizer(tapRec)
            
            
            
            UIView.getPermissionToChange(views: [
                instaLabel,
                nameLabel,
                nameTextField,
                surnameLabel,
                surnameTextField,
                passwordLabel,
                passwordTextField,
                numberLabel,
                numberTextField,
                signInButton
            
            ])
            
            stackView.addArrangedSubview(instaLabel)
            stackView.addArrangedSubview(nameLabel)
            stackView.addArrangedSubview(nameTextField)
            stackView.addArrangedSubview(surnameLabel)
            stackView.addArrangedSubview(surnameTextField)
            stackView.addArrangedSubview(passwordLabel)
            stackView.addArrangedSubview(passwordTextField)
            stackView.addArrangedSubview(numberLabel)
            stackView.addArrangedSubview(numberTextField)
            stackView.addArrangedSubview(signInButton)
            
            // Add similar labels and text fields for other fields
        }
    
    
    
    
    
    //MARK: Actions
    @objc private func signUpButtonTapped() {
        // Handle sign-up button tap
    }
    
    @objc private func endTyping() {
        view.endEditing(true)
    }
    
    
    }
