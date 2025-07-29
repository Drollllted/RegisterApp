//
//  CustomTextField.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import UIKit

enum Variables: String {
    case name
    case surname
    case password
    case repeatPassword
    
    var placeholder: String {
        switch self {
            
        case .name:
            return "Write your's name"
        case .surname:
            return "Write your's surname"
        case .password:
            return "Write your's password"
        case .repeatPassword:
            return "Repeat your's password"
        }
    }
    
    var icon: String {
        switch self{
            
        case .name:
            return "person.fill"
        case .surname:
            return "person.fill"
        case .password:
            return "lock.fill"
        case .repeatPassword:
            return "lock.fill"
        }
    }
}

final class CustomTextField: UITextField {
    
    private let padding = UIEdgeInsets(top: 0, left: 44, bottom: 0, right: 16)
    private let iconImageView = UIImageView()
    
    init(variables: Variables) {
        super.init(frame: .zero)
        setupUI(with: variables)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    func setupUI(with variables: Variables) {
        backgroundColor = .systemGray6
        layer.cornerRadius = 15
        layer.masksToBounds = true
        font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        placeholder = variables.placeholder
        
        iconImageView.image = UIImage(systemName: variables.icon)
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.tintColor = .systemGray
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        if variables == .password || variables == .repeatPassword {
            isSecureTextEntry = true
            textContentType = .password
        } else {
            textContentType = .name
        }
        
        if variables == .name || variables == .surname {
            autocapitalizationType  = .words
        }
    }
}
