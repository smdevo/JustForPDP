//
//  ThirdViewController.swift
//  JustForPDP
//
//  Created by Samandar on 25/04/24.
//

import UIKit

class ThirdJustViewController: UIViewController {

    
    private let signoutbutton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Sign out", for: .normal) // Text to be displayed
        button.setTitleColor(.white, for: .normal) // Text color
        button.backgroundColor = .blue // Background color
        button.layer.cornerRadius = 10 // Rounded corners
        button.clipsToBounds = true // Clip to bounds
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(signoutbutton)
        
        NSLayoutConstraint.activate([
                    signoutbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    signoutbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    signoutbutton.widthAnchor.constraint(equalToConstant: 100),
                    signoutbutton.heightAnchor.constraint(equalToConstant: 60)
                ])
        
        
        
        
        
        signoutbutton.addTarget(self, action: #selector(signingOut), for: .touchUpInside)
        
        
    }
    

    
    @objc func signingOut() {
        
        let alertcontrollersignout = UIAlertController(title: "Sign Out?", message: "Do you want to sign out", preferredStyle: .alert)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
        let actionOk = UIAlertAction(title: "Ok", style: .default) { action in
            print("Ok")
        }
        alertcontrollersignout.addAction(actionCancel)
        alertcontrollersignout.addAction(actionOk)
        
        
        present(alertcontrollersignout, animated: true)
        
    }
   

}
