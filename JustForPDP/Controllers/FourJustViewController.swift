//
//  FourJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 25/04/24.
//

import UIKit

class FourJustViewController: UIViewController {
    
    let mainStackView = UIStackView()
    
    let imageView = UIImageView(image: UIImage(named: "image1"))
    
    let buttonStackView = UIStackView()
    
    let button1 = UIButton(type: .system)
    
    let button2 = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the main stack view
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .vertical
        mainStackView.spacing = 20
        
        // Create the image view
       
        imageView.contentMode = .scaleAspectFill
        
        // Create the button stack view
        
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        buttonStackView.spacing = 20
        
        // Create the buttons
        
        button1.setTitle("Button 1", for: .normal)
        button1.backgroundColor = .blue
        button1.tintColor = .white
        button1.addTarget(self, action: #selector(didRealImage), for: .touchUpInside)
        
        
        button2.setTitle("Button 2", for: .normal)
        button2.backgroundColor = .blue
        button2.tintColor = .white
        button2.addTarget(self, action: #selector(didIcon), for: .touchUpInside)
        
        // Add the buttons to the button stack view
        buttonStackView.addArrangedSubview(button1)
        buttonStackView.addArrangedSubview(button2)
        
        // Add the image view and button stack view to the main stack view
        mainStackView.addArrangedSubview(imageView)
        mainStackView.addArrangedSubview(buttonStackView)
        
        // Add the main stack view to the view hierarchy
        view.addSubview(mainStackView)
        
        
        // Set constraints to center the main stack view
        NSLayoutConstraint.activate([
            mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainStackView.heightAnchor.constraint(equalToConstant: 500),
            mainStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            mainStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            buttonStackView.leftAnchor.constraint(equalTo: mainStackView.leftAnchor),
            buttonStackView.rightAnchor.constraint(equalTo: mainStackView.rightAnchor),
            imageView.leftAnchor.constraint(equalTo: mainStackView.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: mainStackView.rightAnchor),
            buttonStackView.heightAnchor.constraint(equalToConstant: 60)
            
            
            
        ])
    }
    
    
    @objc func didRealImage() {
        self.imageView.image = UIImage(named: "image1")
    }
    
    @objc func didIcon() {
        self.imageView.image = UIImage(systemName: "swift")
    }
    
}
