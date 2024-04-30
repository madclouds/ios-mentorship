//
//  AppDelegate.swift
//  Mentor
//
//  Created by Erik Bye on 3/25/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var navController: UINavigationController?
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller = ViewController()
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        return true
    }
}

