//
//  ComponentsRouter.swift
//  TinkoffSolutionCupDemoApp
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

protocol IComponentsRouter {
    func showHeader()
}

class ComponentsRouter: IComponentsRouter {

    weak private var controller: UINavigationController?
    
    init(controller: UINavigationController) {
        self.controller = controller
    }
    
    func showHeader() {
        
    }
}
