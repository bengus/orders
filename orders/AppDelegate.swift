//
//  AppDelegate.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private lazy var diContainer: DIContainerProtocol = DIContainer(app: UIApplication.shared)
    
    
    // MARK: - UIApplicationDelegate
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        self.window = window
        
        window.rootViewController = diContainer.getHomeTabBarController()
        
        return true
    }
}
