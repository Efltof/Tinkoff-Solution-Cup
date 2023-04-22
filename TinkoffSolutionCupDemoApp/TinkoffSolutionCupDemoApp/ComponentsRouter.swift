//
//  ComponentsRouter.swift
//  TinkoffSolutionCupDemoApp
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

protocol IComponentsRouter {
    var delegate: UINavigationController? { get set }
    func showComponent(_ component: Component)
}

class ComponentsRouter: IComponentsRouter {

    weak var delegate: UINavigationController?
    
    func showComponent(_ component: Component) {
        switch component {
        case .header:
            showHeader()
        }
    }
    
    private func showHeader() {
        let vc = HeaderViewController()
        delegate?.present(vc, animated: true)
    }
}
