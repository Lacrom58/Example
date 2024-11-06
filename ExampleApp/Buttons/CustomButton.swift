//
//  CustomButton.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 28.10.2024.
//

import UIKit

class CustomButton: UIButton {
    
    
    init(buttonName: String, color: UIColor, needShadow: Bool) {
        super.init(frame: .zero)
        setupButton(buttonName, color, needShadow)
    }
    
    @available(*, deprecated)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func hideUser(_ name: String) {
        
    }

}


// MARK: Button
extension CustomButton {
    private func setupButton(_ buttonName: String, _ color: UIColor, _ needShadow: Bool) {
        setTitle(buttonName, for: .normal)
        backgroundColor = color
        layer.cornerRadius = 10
        
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        if needShadow {
            layer.shadowOpacity = 0.8
        }
    }
}


