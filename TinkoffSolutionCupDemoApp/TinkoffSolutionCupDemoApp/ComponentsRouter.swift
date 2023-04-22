//
//  ComponentsRouter.swift
//  TinkoffSolutionCupDemoApp
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

protocol IComponentsRouter {
    func showComponent(_ component: Component)
}

class ComponentsRouter: IComponentsRouter {

    private weak var delegate: UINavigationController?
    
    init(controller: UINavigationController) {
        self.delegate = controller
    }
    
    func showComponent(_ component: Component) {
        switch component {
        case .header: break
            
        }
    }
    
    private func showHeader() {
        
    }
}
