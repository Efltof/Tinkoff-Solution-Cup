//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

public class TSCHeaderView: TSCBaseView {
    
    private let background: UIView = {
        var view = UIView()
        
        return view
    }()
    
    private let titleLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let subtitleLabel = UILabel()
    private let image = UIImageView()
    private let button = UIButton()
    
    let configuration: TSCHeaderConfiguration

    init(configuration: TSCHeaderConfiguration) {
        self.configuration = configuration
        
        super.init()
    }
    
    override func setupView() {
        addSubview(titleLabel)
//
//        titleLabel.anchor(
//            top: topAnchor,
//            paddingTop: 16,
//            bottom: <#T##NSLayoutYAxisAnchor?#>,
//            paddingBottom: <#T##CGFloat#>, left: <#T##NSLayoutXAxisAnchor?#>, paddingLeft: <#T##CGFloat#>, right: <#T##NSLayoutXAxisAnchor?#>, paddingRight: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
