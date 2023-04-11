//
//  AppDelegate.swift
//  TestTask
//
//  Created by Sergio on 13.03.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator : AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        check()
        return true
    }

    func check() {
        if UserDefaults.standard.value(forKey: "userLogged") != nil {
            window = UIWindow(frame: UIScreen.main.bounds)
            let navigationCon = UINavigationController.init()
            appCoordinator = AppCoordinator(navCon: navigationCon)
            appCoordinator?.startUser()
            window?.rootViewController = navigationCon
            window?.makeKeyAndVisible()
        } else {
            window = UIWindow(frame: UIScreen.main.bounds)
            let navigationCon = UINavigationController.init()
            appCoordinator = AppCoordinator(navCon: navigationCon)
            appCoordinator?.start()
            window?.rootViewController = navigationCon
            window?.makeKeyAndVisible()
        }
    }
}
