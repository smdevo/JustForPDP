//
//  SixJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 26/04/24.
//

import UIKit

class SixJustViewController: UIViewController {

    private let helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello Sir"
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
        
        
        view.backgroundColor = .systemGray5
        view.addSubview(helloLabel)
        
        title = "New"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(backing))
        
        
        
        NSLayoutConstraint.activate([
            helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.widthAnchor.constraint(equalToConstant: 150),
            helloLabel.heightAnchor.constraint(equalToConstant: 50),

        
        ])
        
    }
    
    
    @objc func backing() {
        
        dismiss(animated: true,completion: nil)
    }

    

}
