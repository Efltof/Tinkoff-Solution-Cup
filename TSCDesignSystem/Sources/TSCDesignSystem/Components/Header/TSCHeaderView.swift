//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

public class TSCHeaderView: TSCBaseView {
    
    private let verticalStackView: UIStackView = {
        var view = UIStackView()
        view.axis = .vertical
        
        return view
    }()
    
    private let labelsStackView: UIStackView = {
        var view = UIStackView()
        view.axis = .vertical
        
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

    init(configuration: TSCHeaderConfiguration) {
        self.configuration = configuration
        
        super.init()
        
        initialSetup(with: configuration)
    }
    
    override func setupView() {
        addSubview(verticalStackView)
        
        verticalStackView.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor)
        
        verticalStackView.addArrangedSubview(topContainer)
        
        topContainer.addSubview(labelsStackView)

        labelsStackView.addArrangedSubview(titleLabel)
        labelsStackView.addArrangedSubview(subtitleLabel)
        
        topContainer.addSubview(imageView)
        
        labelsStackView.anchor(
            top: topContainer.topAnchor,
            bottom: topContainer.bottomAnchor,
            leading: topContainer.leadingAnchor,
            trailing: imageView.leadingAnchor,
            paddingTrailing: Paddings.m
        )
        
        imageView.anchor(
            top: topContainer.topAnchor,
            bottom: topContainer.bottomAnchor,
            trailing: topContainer.trailingAnchor,
            paddingTrailing: Paddings.m
        )
    }
    
    private func initialSetup(with configuration: TSCHeaderConfiguration) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
