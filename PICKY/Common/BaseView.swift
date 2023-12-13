//
//  BaseView.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit
import SnapKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfiguration()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConfiguration() { }
    func setConstraints() { }
}
