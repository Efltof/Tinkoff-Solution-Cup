//
//  File.swift
//  
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import Foundation
import UIKit

public protocol IImageLoader {
    func loadImage(completion: @escaping (UIImage) -> Void)
}
