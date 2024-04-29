//
//  extensionToView.swift
//  JustForPDP
//
//  Created by Samandar on 27/04/24.
//

import UIKit


extension UIView {
    
    
    
    
    func setIntowithConst(into superview: UIView) {

        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor)
        ])

    }
    
    func setIntowithConst(into superview: UIView, distance: CGFloat?) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor,constant: distance ?? 0),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor,constant: -(distance ?? 0)),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor,constant: distance ?? 0),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor,constant: -(distance ?? 0))
        ])

    }
    
    static func getPermissionToChange(views: [UIView]){
        
        for i in views {
            i.translatesAutoresizingMaskIntoConstraints = false
        }
        
    }

    
}
