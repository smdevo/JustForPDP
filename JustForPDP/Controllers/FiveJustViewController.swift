//
//  FiveJustViewController.swift
//  JustForPDP
//
//  Created by Samandar on 26/04/24.
//

import UIKit

class FiveJustViewController: UIViewController {

    //MARK: Properties
    
    let openSbutton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.setTitle("Open New Page", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        gettingReady()
    }
    

    
    
    
        //MARK: Methods
    
    func gettingReady() {
        
        
        //View Settings
        view.backgroundColor = .red
        title = "Five VC"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(openingnextPage))
        
        
        
        //Adding Subviews
        view.addSubview(openSbutton)
        
        
        //Other Actions
        openSbutton.addTarget(self, action: #selector(openingNewPage), for: .touchUpInside)
        
        
        
        
        //Calling Methods
        settingconst()
    }
  
    
    func settingconst() {
        
        
        NSLayoutConstraint.activate([
            openSbutton.widthAnchor.constraint(equalToConstant: 140),
            openSbutton.heightAnchor.constraint(equalToConstant: 60),
            openSbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            openSbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        
        ])
        
    }

    
    //MARK: Actions
    
    
    
    
    @objc func openingNewPage() {
        
        
        let newVC = SixJustViewController()
        let ng = UINavigationController(rootViewController: newVC)
        ng.navigationBar.prefersLargeTitles = true
        
        present(ng, animated: true)
        
        
    }
    
    
    @objc func openingnextPage() {
        
        let nextVC = SevenJustViewController()
        
        
        navigationController?.pushViewController(nextVC, animated: true)
        
        
    }
    
    
}
