//
//  Header.swift
//  TinkoffSolutionCupDemoApp
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import TSCDesignSystem
import UIKit

class HeaderViewController: UIViewController {
    
    private let defaultHeader: TSCHeaderView = {
        let config = TSCHeaderConfiguration(
            title: "Header",
            titleFont: .title,
            subtitle: "subtitle",
            subtitleFont: .secondarySubtitle,
            imageResolver: nil,
            defaultImage: TSC.Image.star
        )
        let header = TSCHeaderView(configuration: config)
        
        return header
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        
        view.addSubview(defaultHeader)
        defaultHeader.anchor(
            width: 343,
            height: 84,
            centerX: view.centerXAnchor,
            centerY: view.centerYAnchor
        )
    }
}

extension UIFont {
    
    static let title = bold(size: 20)
    static let secondarySubtitle = regular(size: 15)
    
    private static func bold(size: CGFloat) -> UIFont {
        .boldSystemFont(ofSize: size)
    }
    
    private static func regular(size: CGFloat) -> UIFont {
        .systemFont(ofSize: size)
    }
}
