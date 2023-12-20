//
//  TopView.swift
//  PICKY
//
//  Created by 김하은 on 12/19/23.
//

import UIKit

final class TopView: BaseView {

    let logoLabel = {
        let view = UILabel()
        view.text = "PICKY"
        view.textColor = .signatureColor
        view.font = .customFont(style: .logo, ofSize: 30)
        view.textAlignment = .center
        return view
    }()
    
    lazy var menuList = UIMenu(title: "메뉴", children: items)
    
    var items: [UIAction] {
        let save = UIAction(
            title: "Save",
            image: UIImage(systemName: "plus"),
            handler: { [weak self] _ in
                
            })

        let delete = UIAction(
            title: "Delete",
            image: UIImage(systemName: "trash"),
            handler: { [weak self] _ in
                
            })

        let Items = [save, delete]

        return Items
    }
    
    lazy var menuButton = {
        let view = UIButton()
        view.menu = menuList
        view.setImage(UIImage.iconMore, for: .normal)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    override func setConfiguration() {
        addSubview(logoLabel)
        addSubview(menuButton)
    }
    
    override func setConstraints() {
        logoLabel.snp.makeConstraints {
            $0.leading.equalTo(self).offset(16)
            $0.top.bottom.equalTo(self)
        }
        
        menuButton.snp.makeConstraints {
            $0.trailing.equalTo(self).inset(16)
            $0.top.equalTo(self)
            $0.width.equalTo(30)
        }
    }
    
}
