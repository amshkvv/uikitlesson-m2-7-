//
//  SceneDelegate.swift
//  m2l7
//
//  Created by AndreyM on 06.10.2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let csene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: csene)
        self.window?.rootViewController = UINavigationController(rootViewController: ViewController())
        self.window?.makeKeyAndVisible()
        
        
    }

}

