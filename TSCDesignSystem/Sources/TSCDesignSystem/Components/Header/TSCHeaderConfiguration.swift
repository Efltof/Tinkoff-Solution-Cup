//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

typealias ImageResolver = (() -> UIImage)
typealias Callback = () -> ()

protocol ITSCHeaderViewProtocol: AnyObject {
    func changeTitle(_ title: String)
    func changeSubtitle(_ subtitle: String?)
    func setImage(image: UIImage)
}

public class TSCHeaderConfiguration {
    
    weak var view: ITSCHeaderViewProtocol?
    
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
    
    var imageResolver: ImageResolver?
    var action: Callback?
    
    init(title: String,
         subtitle: String? = nil,
         imageResolver: ImageResolver?,
         action: Callback?) {
        self.title = title
        self.subtitle = subtitle
        self.imageResolver = imageResolver
        self.action = action
    }
}
