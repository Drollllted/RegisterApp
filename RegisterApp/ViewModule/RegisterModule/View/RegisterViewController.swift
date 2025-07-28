//
//  RegisterViewController.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import UIKit

final class RegisterViewController: UIViewController {
    
    weak var registerCoordinator: RegisterCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupNavBar()
    }
    
    private func setupNavBar() {
        navigationItem.title = "Register"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
}
