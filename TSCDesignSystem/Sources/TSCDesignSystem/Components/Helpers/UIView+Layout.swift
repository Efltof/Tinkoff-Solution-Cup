//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor? = nil, paddingTop: CGFloat = 0, bottom: NSLayoutYAxisAnchor? = nil, paddingBottom: CGFloat = 0, leading: NSLayoutXAxisAnchor? = nil, paddingLeading: CGFloat = 0, trailing: NSLayoutXAxisAnchor? = nil, paddingTrailing: CGFloat = 0, width: CGFloat? = nil, height: CGFloat? = nil, centerY: NSLayoutYAxisAnchor? = nil, minimalHeight: CGFloat? = nil) {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingTrailing).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }
        if let centerY = centerY {
            centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        if let minimalHeight = minimalHeight {
            heightAnchor.constraint(greaterThanOrEqualToConstant: minimalHeight).isActive = true
        }
    }
}
