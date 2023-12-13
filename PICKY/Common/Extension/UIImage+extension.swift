//
//  UIImage+extension.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit

extension UIImage {
    enum AssetImage: String {
        case password
        case email
        case user
        case emptyProfileImage
    }
    
    static func customImage(imageName: AssetImage) -> UIImage {
        return UIImage(named: imageName.rawValue) ?? UIImage()
    }
}
