//
//  ExtensionToUIVC.swift
//  JustForPDP
//
//  Created by Samandar on 29/04/24.
//

import UIKit


extension UIViewController {
    
    static var appdelegeteObj: AppDelegate {
        
        return UIApplication.shared.delegate as! AppDelegate
        
    }
     
    
    static var scenedelegete: SceneDelegate {
        
        return (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)!
        
    }
    
    
}
