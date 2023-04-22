//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

public class TSCHeaderView: TSCBaseView, ITSCHeaderView {
    
    private let verticalStackView: UIStackView = {
        var view = UIStackView()
        view.axis = .vertical
        
        return view
    }()
    
    private let labelsStackView: UIStackView = {
        var view = UIStackView()
        view.axis = .vertical
        view.spacing = Constants.Paddings.s
        
        return view
    }()
    
    private let imageView: UIImageView = {
        var view = UIImageView()
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    private let topContainer = UIView()
    
    private let titleLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        
        return label
    }()
    
    private let image = UIImageView()
    private let button = UIButton()
    
    let configuration: TSCHeaderConfiguration

    public init(configuration: TSCHeaderConfiguration) {
        self.configuration = configuration
        
        super.init(frame: .zero)
        
        configuration.view = self
    }
    
    override func setupView() {
        backgroundColor = .systemBackground
        layer.cornerRadius = 24
        
        
        addSubview(verticalStackView)
        
        verticalStackView.anchor(
            top: topAnchor,
            paddingTop: Constants.Paddings.m,
            bottom: bottomAnchor,
            paddingBottom: Constants.Paddings.m,
            leading: leadingAnchor,
            paddingLeading: Constants.Paddings.l,
            trailing: trailingAnchor,
            paddingTrailing: Constants.Paddings.l
        )
        
        verticalStackView.addArrangedSubview(topContainer)
        
        topContainer.addSubview(labelsStackView)

        labelsStackView.addArrangedSubview(titleLabel)
        titleLabel.anchor(minimalHeight: 24)
        
        labelsStackView.addArrangedSubview(subtitleLabel)
        subtitleLabel.anchor(minimalHeight: 18)
        
        topContainer.addSubview(imageView)
        
        labelsStackView.anchor(
            top: topContainer.topAnchor,
            bottom: topContainer.bottomAnchor,
            leading: topContainer.leadingAnchor,
            trailing: imageView.leadingAnchor,
            paddingTrailing: Constants.Paddings.m
        )
        
        imageView.anchor(
            top: topContainer.topAnchor,
            trailing: topContainer.trailingAnchor,
            width: 40,
            height: 40
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - ITSCHeaderView
    
    func changeTitle(_ title: String) {
        titleLabel.text = title
    }
    
    func changeTitleFont(_ font: UIFont) {
        titleLabel.font = font
    }
    
    func changeSubtitle(_ subtitle: String?) {
        subtitleLabel.text = subtitle
    }
    
    func changeSubtitleFont(_ font: UIFont) {
        subtitleLabel.font = font
    }
    
    func setImage(image: UIImage) {
        imageView.image = image
    }
}
