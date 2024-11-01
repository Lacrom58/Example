//
//  CustomButton.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 28.10.2024.
//

import UIKit

class CustomButton: UIButton {
    
    private let button = UIButton()
    
    init(buttonName: String, color: UIColor, needShadow: Bool) {
        super.init(frame: .zero)
        setupButton(buttonName, color, needShadow)
        setupLayout()
    }
    
    @available(*, deprecated)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

// MARK: Constraints Button
extension CustomButton {
    private func setupLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor)
        
        ])
    }
}

// MARK: Button
extension CustomButton {
    private func setupButton(_ buttonName: String, _ color: UIColor, _ needShadow: Bool) {
        button.setTitle(buttonName, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 20
        if needShadow {
            button.layer.shadowOpacity = 0.8
        }
        addSubview(button)
    }
}
