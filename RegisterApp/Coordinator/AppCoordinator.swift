//
//  MainCoordinator.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
    
    private var window: UIWindow
    
    private let navigationController: UINavigationController = {
        let nav = UINavigationController()
        nav.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        nav.navigationBar.prefersLargeTitles = true
        return nav
    }()
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    
    override func start() {
        let registerCoordinator = RegisterCoordinator(navigationController: navigationController)
        add(coordinator: registerCoordinator)
        registerCoordinator.start()
    }
}
