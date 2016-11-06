//
//  AppDelegate.swift
//  Whatsapp
//
//  Created by Yi Gu on 9/15/16.
//  Copyright © 2016 Yi Gu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    setupTapbarController()
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }
  
  func setupTapbarController(){
    let tabBarController = UITabBarController()
    
    let favoritesViewController = FavoritesViewController()
    let favoritesViewBarItem = UITabBarItem(title: "Favorites", image: UIImage(named: "TabBarIconStarOff"), selectedImage: UIImage(named: "TabBarIconStarOn"))
    favoritesViewController.tabBarItem = favoritesViewBarItem
    
    let contactsViewController = ContactsViewController()
    let contactsViewBarItem = UITabBarItem(title: "Contacts", image: UIImage(named: "TabBarIconContactsOff"), selectedImage: UIImage(named: "TabBarIconContactsOn"))
    contactsViewController.tabBarItem = contactsViewBarItem
    
    let callsViewController = CallsViewController()
    let callsViewBarItem = UITabBarItem(title: "Calls", image: UIImage(named: "TabBarIconCallsOff"), selectedImage: UIImage(named: "TabBarIconCallsOn"))
    callsViewController.tabBarItem = callsViewBarItem

    let chatsViewController = AllChatsViewController()
    let chatsNavigationController = UINavigationController(rootViewController: chatsViewController)
    let chatsViewBarItem = UITabBarItem(title: "Chats", image: UIImage(named: "TabBarIconChatsOff"), selectedImage: UIImage(named: "TabBarIconChatsOn"))
    chatsNavigationController.tabBarItem = chatsViewBarItem
    
    let settingsViewController = SettingsViewController()
    let settingsViewBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "TabBarIconSettingsOff"), selectedImage: UIImage(named: "TabBarIconSettingsOn"))
    settingsViewController.tabBarItem = settingsViewBarItem
    
    tabBarController.viewControllers = [favoritesViewController, callsViewController, contactsViewController, chatsNavigationController, settingsViewController]
    setupTabBarUI(tabBar: tabBarController.tabBar)
    
    window?.rootViewController = tabBarController
  }
  
  private func setupTabBarUI(tabBar: UITabBar) {
    tabBar.barTintColor = UIColor.white
  }
}

