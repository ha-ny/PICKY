//
//  BaseCell.swift
//  PICKY
//
//  Created by 김하은 on 12/19/23.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
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
