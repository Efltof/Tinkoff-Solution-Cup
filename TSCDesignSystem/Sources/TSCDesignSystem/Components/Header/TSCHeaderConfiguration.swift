//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

protocol ITSCHeaderView: AnyObject {
    func changeTitle(_ title: String)
    func changeTitleFont(_ font: UIFont)
    
    func changeSubtitle(_ subtitle: String?)
    func changeSubtitleFont(_ font: UIFont)
    
    func setImage(image: UIImage)
}

public class TSCHeaderConfiguration {
    
    public enum Style {
        case `default`
        case inactive
    }
    
    weak var view: ITSCHeaderView? {
        didSet {
            initialSetup()
        }
    }
    
    public var style: Style

    public var title: String {
        didSet {
            view?.changeTitle(title)
        }
    }
    
    public var titleFont: UIFont {
        didSet {
            view?.changeTitleFont(titleFont)
        }
    }
    
    public var subtitle: String? {
        didSet {
            view?.changeSubtitle(subtitle)
        }
    }
    
    public var subtitleFont: UIFont {
        didSet {
            view?.changeSubtitleFont(subtitleFont)
        }
    }
    
    public var imageResolver: IImageLoader? {
        didSet {
            loadCustomImage()
        }
    }
    
    public var defaultImage: UIImage? {
        didSet {
            guard let image = defaultImage, !customImageLoaded else { return }
            view?.setImage(image: image)
        }
    }
    
    public var action: (() -> Void)?
    
    private var customImageLoaded = false
    
    public init(
        style: Style = .default,
        title: String,
        titleFont: UIFont,
        subtitle: String? = nil,
        subtitleFont: UIFont,
        imageResolver: IImageLoader?,
        defaultImage: UIImage?,
        action: (() -> Void)? = nil) {
            self.style = style
            self.title = title
            self.titleFont = titleFont
            self.subtitle = subtitle
            self.subtitleFont = subtitleFont
            self.imageResolver = imageResolver
            self.defaultImage = defaultImage
            self.action = action
        }
    
    private func initialSetup() {
        view?.changeTitle(title)
        view?.changeTitleFont(titleFont)
        
        view?.changeSubtitle(subtitle)
        view?.changeSubtitleFont(subtitleFont)
        
        if let defaultImage = defaultImage {
            view?.setImage(image: defaultImage)
        }
        
        loadCustomImage()
    }
    
    private func loadCustomImage() {
        imageResolver?.loadImage(completion: { [weak self] image in
            self?.view?.setImage(image: image)
            self?.customImageLoaded = true
        })
    }
}
