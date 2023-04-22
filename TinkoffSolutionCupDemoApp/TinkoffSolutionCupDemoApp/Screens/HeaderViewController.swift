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
            subtitle: "subtitle",
            imageResolver: nil,
            defaultImage: TSC.Image.star
        )
        let header = TSCHeaderView(configuration: config)
        
        return header
    }()
    
    private let defaultHeaderWithoutSubtitle: TSCHeaderView = {
        let config = TSCHeaderConfiguration(
            title: "Header",
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
            top: view.topAnchor,
            paddingTop: 150,
            width: 343,
            centerX: view.centerXAnchor,
            centerY: view.centerYAnchor
        )
    
        view.addSubview(defaultHeaderWithoutSubtitle)
        defaultHeaderWithoutSubtitle.anchor(
            top: defaultHeader.bottomAnchor,
            paddingTop: 50,
            width: 343,
            centerX: view.centerXAnchor
        )
    }
}
