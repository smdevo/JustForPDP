//
//  SevenJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 26/04/24.
//

import UIKit


class SevenJustViewController: UIViewController {

    private let helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello"
        label.backgroundColor = .red
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        gettingReady()
    }
    
    
    func gettingReady() {
        
        
        view.backgroundColor = .purple
        view.addSubview(helloLabel)
        
        title = "Next"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(changeColor))
        if #available(iOS 16.0, *) {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back", image: UIImage(systemName: "back"), target: self, action: #selector(backing))
        } else {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back", style: .plain, target: self, action: #selector(backing))
        }
        
        
        NSLayoutConstraint.activate([
            helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.widthAnchor.constraint(equalToConstant: 150),
            helloLabel.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
    }
    
    
    @objc func backing() {
        
        navigationController?.popViewController(animated: true)
    }

    @objc func changeColor() {
        
        view.backgroundColor = .green
    }
    

}
