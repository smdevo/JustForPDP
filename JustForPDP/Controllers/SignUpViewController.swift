//
//  SignUpViewController.swift
//  JustForPDP
//
//  Created by Samandar on 29/04/24.
//

import UIKit


class SignUpViewController: UIViewController {
    
    //MARK: Properties
    
    //Views
     private let toptView: UIView = {
        let view = UIView()
        
       return view
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
       return view
    }()
    
    private let bottomview: UIView = {
        let view = UIView()
        
       return view
    }()
    
    
    //Labels
    private let instalabel: UILabel = {
        let label = UILabel()
        label.text = "Instagram"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        // Additional customization if needed
        return label
    }()

    private let askingLabel: UILabel = {
        let label = UILabel()
        label.text = "Already have an account?"
        label.font = UIFont.italicSystemFont(ofSize: 16)
        label.textColor = .darkGray
        label.textAlignment = .center
        // Additional customization if needed
        return label
    }()

    //Buttons
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        // Additional customization if needed
        button.addTarget(self, action: #selector(goingBacktoSignInPage), for: .touchUpInside)
        return button
    }()

    private let backToSignInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .clear
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        // Additional customization if needed
        button.addTarget(self, action: #selector(goingBacktoSignInPage), for: .touchUpInside)
        return button
    }()

    //TextFields
    private let nameTF: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Name"
        textfield.textColor = .black
        textfield.backgroundColor = .systemGray6
        textfield.layer.cornerRadius = 8
        textfield.clipsToBounds = true
        // Additional customization if needed
        return textfield
    }()
    
    private let surnameTF: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Surname"
        textfield.textColor = .black
        textfield.backgroundColor = .systemGray6
        textfield.layer.cornerRadius = 8
        textfield.clipsToBounds = true
        // Additional customization if needed
        return textfield
    }()
    
    private let userNameTF: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Username"
        textfield.textColor = .black
        textfield.backgroundColor = .systemGray6
        textfield.layer.cornerRadius = 8
        textfield.clipsToBounds = true
        // Additional customization if needed
        return textfield
    }()

    private let passwordTF: UITextField = {
        let password = UITextField()
        password.placeholder = "Password"
        password.isSecureTextEntry = true
        password.textColor = .black
        password.backgroundColor = .systemGray6
        password.layer.cornerRadius = 8
        password.clipsToBounds = true
        // Additional customization if needed
        return password
    }()

    //StackViews
    let vstackView: UIStackView = {
        let stackView = UIStackView()
       // stackView.backgroundColor = .systemGray5
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .fill
        stackView.distribution = .fill
        return stackView
    }()
    
    let hstackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.alignment = .fill
        //stackView.distribution = .fill
        return stackView
    }()
    

    
    //MARK: Override Func
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //creating views -> done
        

        //customizing view and adding subviews
        customizingAndAddingViews()
        
        //setting constrains
        settingConstrains()
        
        //Going Back to Sign In
    }
    

    //MARK: View Methods
    func customizingAndAddingViews() {
        
        view.backgroundColor = .white
        view.addSubview(toptView)
        view.addSubview(lineView)
        view.addSubview(bottomview)
        
        toptView.addSubview(vstackView)
        
        bottomview.addSubview(hstackView)
        
        vstackView.addArrangedSubview(instalabel)
        vstackView.addArrangedSubview(nameTF)
        vstackView.addArrangedSubview(surnameTF)
        vstackView.addArrangedSubview(userNameTF)
        vstackView.addArrangedSubview(passwordTF)
        vstackView.addArrangedSubview(signUpButton)
        
        hstackView.addArrangedSubview(askingLabel)
        hstackView.addArrangedSubview(backToSignInButton)
          
    }
    
    func settingConstrains() {
        
        //Off translate...
        UIView.getPermissionToChange(views: [toptView,lineView,bottomview,vstackView,hstackView,instalabel,nameTF,surnameTF,userNameTF,passwordTF,signUpButton,askingLabel,backToSignInButton])
        
        
        //setting donstraints
        NSLayoutConstraint.activate([
        
            toptView.topAnchor.constraint(equalTo: view.topAnchor),
            toptView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            toptView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            toptView.bottomAnchor.constraint(equalTo: lineView.topAnchor),
            
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            lineView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            lineView.bottomAnchor.constraint(equalTo: bottomview.topAnchor),
            
            bottomview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/8),
            bottomview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            instalabel.leadingAnchor.constraint(equalTo: vstackView.leadingAnchor),
            instalabel.trailingAnchor.constraint(equalTo: vstackView.trailingAnchor),
            
            nameTF.heightAnchor.constraint(equalTo: vstackView.heightAnchor, multiplier: 1/8),
            nameTF.leadingAnchor.constraint(equalTo: vstackView.leadingAnchor),
            nameTF.trailingAnchor.constraint(equalTo: vstackView.trailingAnchor),
            
            surnameTF.heightAnchor.constraint(equalTo: vstackView.heightAnchor, multiplier: 1/8),
            surnameTF.leadingAnchor.constraint(equalTo: vstackView.leadingAnchor),
            surnameTF.trailingAnchor.constraint(equalTo: vstackView.trailingAnchor),
            
            userNameTF.heightAnchor.constraint(equalTo: vstackView.heightAnchor, multiplier: 1/8),
            userNameTF.leadingAnchor.constraint(equalTo: vstackView.leadingAnchor),
            userNameTF.trailingAnchor.constraint(equalTo: vstackView.trailingAnchor),
            
            passwordTF.heightAnchor.constraint(equalTo: vstackView.heightAnchor, multiplier: 1/8),
            passwordTF.leadingAnchor.constraint(equalTo: vstackView.leadingAnchor),
            passwordTF.trailingAnchor.constraint(equalTo: vstackView.trailingAnchor),
            
            signUpButton.heightAnchor.constraint(equalTo: vstackView.heightAnchor, multiplier: 1/8),
            signUpButton.leadingAnchor.constraint(equalTo: vstackView.leadingAnchor),
            signUpButton.trailingAnchor.constraint(equalTo: vstackView.trailingAnchor),
            
            vstackView.heightAnchor.constraint(equalTo: toptView.heightAnchor, multiplier: 1/2),
            vstackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            vstackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50),
            vstackView.centerYAnchor.constraint(equalTo: toptView.centerYAnchor),
            
            
            hstackView.heightAnchor.constraint(equalTo: bottomview.heightAnchor, multiplier: 1/3),
            hstackView.leadingAnchor.constraint(equalTo: bottomview.leadingAnchor,constant: 20),
            hstackView.trailingAnchor.constraint(equalTo: bottomview.trailingAnchor,constant: -20),
            hstackView.centerYAnchor.constraint(equalTo: bottomview.centerYAnchor),
            

            backToSignInButton.widthAnchor.constraint(equalTo: bottomview.widthAnchor, multiplier: 1/4),
        ])
        
        
        
        
    }
    
    
    //MARK: Actions
    
    @objc func goingBacktoSignInPage() {
        
       dismiss(animated: true,completion: nil)
        
    }
    

}
