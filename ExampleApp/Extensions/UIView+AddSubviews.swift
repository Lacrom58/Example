//
//  UIView+AddSubviews.swift
//  ExampleApp
//
//  Created by Сергей Устинов on 01.11.2024.
//

import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {
        
        for view in views {
            addSubview(view)
        }
    }
}

