//
//  AppDelegate.swift
//  TestAppForAdrevenue
//
//  Created by Moris Gateno on 06/08/2023.
//

import UIKit
import AppsFlyerLib
import AppsFlyerAdRevenue

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        AppsFlyerLib.shared().appsFlyerDevKey = "<DEV-KEY>"
        AppsFlyerLib.shared().appleAppID = "<APP-ID>"
        AppsFlyerLib.shared().isDebug = true
        /* Uncomment the following line to see AppsFlyer debug logs */
        // AppsFlyerLib.shared().isDebug = true
        // SceneDelegate support
        NotificationCenter.default.addObserver(self, selector: NSSelectorFromString("sendLaunch"), name: UIApplication.didBecomeActiveNotification, object: nil)
        AppsFlyerAdRevenue.start()
        AppsFlyerAdRevenue.shared().isDebug = true
        
        return true
    }
    
    @objc func sendLaunch() {
        AppsFlyerLib.shared().start()
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

