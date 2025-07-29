//
//  RegisterView.swift
//  RegisterApp
//
//  Created by Drolllted on 28.07.2025.
//

import UIKit

final class RegisterView: UIView {
    
    //MARK: - Setup UI
    lazy var nameTextField = CustomTextField(variables: .name)
    lazy var surnameTextField = CustomTextField(variables: .surname)
    lazy var passwordTextField = CustomTextField(variables: .password)
    lazy var repeatPasswordTextField = CustomTextField(variables: .repeatPassword)
    
    lazy var datePicker: UIDatePicker = {
        let date = UIDatePicker()
        date.datePickerMode = .date
        date.maximumDate = Date()
        date.calendar.timeZone = .current
        
        // Основные настройки цвета
        date.backgroundColor = .clear
        date.tintColor = .white
        
        // Для iOS 13.4+ (колесный стиль)
        if #available(iOS 13.4, *) {
            date.preferredDatePickerStyle = .wheels
            date.overrideUserInterfaceStyle = .light // Принудительно светлый интерфейс
        }
        
        // Для iOS 14+ можно настроить цвета компонентов
        if #available(iOS 14.0, *) {
            date.tintColor = .white
            date.setValue(UIColor.white, forKey: "textColor")
            date.setValue(false, forKey: "highlightsToday")
        }
        
        // Для версий до iOS 13.4
        date.setValue(UIColor.white, forKeyPath: "textColor")
        
        date.translatesAutoresizingMaskIntoConstraints = false
        return date
    }()
    
    lazy var continueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.purple.cgColor
        button.backgroundColor = .blue
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    //MARK: - UIStackView
    private lazy var customStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.alignment = .fill
        stack.distribution = .fill
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(nameTextField)
        stack.addArrangedSubview(surnameTextField)
        stack.addArrangedSubview(datePicker)
        stack.addArrangedSubview(passwordTextField)
        stack.addArrangedSubview(repeatPasswordTextField)
        
        return stack
    }()
    
    //MARK: - Lifecycles
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        constraintsUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Constraints
extension RegisterView {
    func setupUI() {
        addSubview(customStackView)
        addSubview(continueButton)
    }
    
    func constraintsUI() {
        NSLayoutConstraint.activate([
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            surnameTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            repeatPasswordTextField.heightAnchor.constraint(equalToConstant: 50),

            datePicker.heightAnchor.constraint(equalToConstant: 150),
            
            customStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            customStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            customStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            
            continueButton.topAnchor.constraint(equalTo: customStackView.bottomAnchor, constant: 30),
            continueButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            continueButton.widthAnchor.constraint(equalToConstant: 200),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
            continueButton.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
