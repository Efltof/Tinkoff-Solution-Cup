//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

extension UIView {
    func setConstraints(topAnchor: NSLayoutYAxisAnchor? = nil,
                        leadingAnchor: NSLayoutXAxisAnchor? = nil,
                        trailingAnchor: NSLayoutXAxisAnchor? = nil,
                        bottomAnchor: NSLayoutYAxisAnchor? = nil,
                        paddingTop: CGFloat = 0,
                        paddingLeft: CGFloat = 0,
                        paddingRight: CGFloat = 0,
                        paddingBottom: CGFloat = 0,
                        width: CGFloat? = nil,
                        height: CGFloat? = nil) {
        
        // Make sure the view's translatesAutoresizingMaskIntoConstraints property is set to false
        translatesAutoresizingMaskIntoConstraints = false
        
        // Set the top anchor if provided
        if let top = topAnchor {
            topAnchor?.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        // Set the leading anchor if provided
        if let leading = leadingAnchor {
            leadingAnchor?.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        // Set the trailing anchor if provided
        if let trailing = trailingAnchor {
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingRight).isActive = true
        }
        
        // Set the bottom anchor if provided
        if let bottom = bottomAnchor {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        // Set the width if provided
        if let w = width {
            widthAnchor.constraint(equalToConstant: w).isActive = true
        }
        
        // Set the height if provided
        if let h = height {
            heightAnchor.constraint(equalToConstant: h).isActive = true
        }
    }
}
