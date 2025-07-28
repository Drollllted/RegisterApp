//
//  MainCoordinator.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import UIKit

final class MainCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let mainVC = MainViewController()
        mainVC.mainCoordinator = self
        navigationController.pushViewController(mainVC, animated: true)
    }
}
