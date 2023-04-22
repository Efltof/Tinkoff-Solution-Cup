//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

public struct TSC {
    
    public init() {}
    
    public struct Image {
        private init() {}
        
        public static let star = UIImage(named: "BlueStar")
    }
    
    public struct Color {
        private init() {}
        
        public static let secondary = UIColor(red: 0.573, green: 0.6, blue: 0.635, alpha: 1)
    }
}

public extension UIFont {
    
    static let TSCTitle = bold(size: 20)
    static let TSCsecondarySubtitle = regular(size: 15)
    
    private static func bold(size: CGFloat) -> UIFont {
        .boldSystemFont(ofSize: size)
    }
    
    private static func regular(size: CGFloat) -> UIFont {
        .systemFont(ofSize: size)
    }
}
