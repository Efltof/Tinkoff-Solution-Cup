//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

protocol ITSCHeaderViewProtocol: AnyObject {
    func changeTitle(_ title: String)
    func changeSubtitle(_ subtitle: String?)
    func setImage(image: UIImage)
}

public class TSCHeaderConfiguration {
    
    enum Style {
        case `default`
        case inactive
    }
    
    weak var view: ITSCHeaderViewProtocol?
    
    var style: Style

    var title: String {
        didSet {
            view?.changeTitle(title)
        }
    }
    
    var subtitle: String? {
        didSet {
            view?.changeSubtitle(subtitle)
        }
    }
    
    var imageResolver: IImageLoader?
    var action: (() -> Void)?
    
    init(style: Style = .default,
         title: String,
         subtitle: String? = nil,
         imageResolver: IImageLoader?,
         action: (() -> Void)?) {
        self.style = style
        self.title = title
        self.subtitle = subtitle
        self.imageResolver = imageResolver
        self.action = action
    }
}
