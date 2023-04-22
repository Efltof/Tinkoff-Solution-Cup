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
        let configuration = TSCHeaderConfiguration(
            title: <#T##String#>,
            titleFont: <#T##UIFont#>,
            subtitleFont: <#T##UIFont#>,
            imageResolver: nil,
            def
        )
        let header = TSCHeaderView(configuration: TSCHeaderConfiguration)
    }()
    
}
