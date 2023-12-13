//
//  UIFont+extension.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit

extension UIFont {
    
    enum Style: String {
        case logo = "RixInooAriDuri_Pro Regular"
        case normal = "S-CoreDream-4Regular"
        case bold = "S-CoreDream-6Bold"
    }
    
    static func customFont(style: Style = .normal, ofSize: CGFloat) -> UIFont {
        return UIFont(name: style.rawValue, size: ofSize) ?? UIFont.systemFont(ofSize: 9)
    }
}
