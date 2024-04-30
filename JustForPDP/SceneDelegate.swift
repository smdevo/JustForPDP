//
//  SceneDelegate.swift
//  JustForPDP
//
//  Created by Samandar on 24/04/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let _ = (scene as? UIWindowScene) else { return }
        
//        if islogged {
//            callHomeVC(scene: ws)
//        }else {
//            callSignInVC(scene: ws)
//        }
        
        
        
        
        //callHomeCVC()
        
        callSignInVC()
        
       // callSignInVC(scene: ws)
        
    }

    func callSignInVC() {
        
        let signInVC = ScrollJustVC()
        
        if window == nil {
            window = UIWindow(frame: UIScreen.main.bounds)
        }
        
        window?.backgroundColor = .white
        window?.rootViewController = signInVC
        window?.makeKeyAndVisible()
        
        
    }
    
    
    
    func callHomeCVC() {
        let homeVC = CollectionVC()
        let nc = UINavigationController(rootViewController: homeVC)
        
        nc.navigationBar.prefersLargeTitles = true
        
        if window == nil {
            window = UIWindow(frame: UIScreen.main.bounds)
        }
        window?.backgroundColor = .white
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
    }
    
    
    
    func callHomeTableVC() {
        
        let homeVC = EightJustViewController()
        let nc = UINavigationController(rootViewController: homeVC)
        
        nc.navigationBar.prefersLargeTitles = true
        
        
        if window == nil {
            window = UIWindow(frame: UIScreen.main.bounds)
        }
        
        window?.backgroundColor = .white
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        
    }
    
    
    
//    func callSignInVC(scene: UIWindowScene) {
//
//        let signInVC = SignInViewController()
//
//        window = UIWindow(windowScene: scene)
//        window?.backgroundColor = .white
//        window?.rootViewController = signInVC
//        window?.makeKeyAndVisible()
//
//    }
//
//
//
//
//    func callHomeVC(scene: UIWindowScene) {
//
//
////        let navBarAppearance = UINavigationBarAppearance()
////        navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white] // Set the color of the title
////
//
//        let homeVC = EightJustViewController()
//        let nc = UINavigationController(rootViewController: homeVC)
//
////        nc.navigationBar.standardAppearance = navBarAppearance
////        nc.navigationBar.scrollEdgeAppearance = navBarAppearance
//
//
//        //fvc.view.backgroundColor = .orange
//
//        nc.navigationBar.prefersLargeTitles = true
//        //nc.navigationBar.tintColor = .black
//        //nc.navigationBar.backgroundColor = .systemGray5
//        //nc.navigationBar.clipsToBounds = true
//        //nc.navigationBar.isTranslucent = false
//
//
//        window = UIWindow(windowScene: scene)
//        window?.backgroundColor = .white
//
//        window?.rootViewController = nc
//        window?.makeKeyAndVisible()
//
//    }
//


}

