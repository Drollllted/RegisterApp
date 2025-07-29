//
//  RegisterView.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import UIKit

final class RegisterView: UIView{
    
    //MARK: - Setup UI
    
    //MARK: - Lifecycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
        contraintsUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - Constraints

extension RegisterView {
    func setupUI() {
        
    }
    
    func contraintsUI() {
        
    }
}
