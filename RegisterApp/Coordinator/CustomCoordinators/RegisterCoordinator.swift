//
//  RegisterCoordinator.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import UIKit

final class RegisterCoordinator: BaseCoordinator{
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let registerVC = RegisterViewController()
        registerVC.registerCoordinator = self
        navigationController.pushViewController(registerVC, animated: true)
    }
    
}
