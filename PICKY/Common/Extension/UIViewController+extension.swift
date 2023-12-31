//
//  UIViewController+extension.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import UIKit

extension UIViewController {
    func toastMessage(message : String) {
        let label = UILabel()
        label.textColor = .black
        label.font = .customFont(ofSize: 14)
        label.textAlignment = .center
        label.text = message
        label.sizeToFit()
        label.backgroundColor = .systemGray6
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        
        let width = label.frame.width + 40
        let center = (self.view.frame.width - width) / 2
        label.frame = CGRect(x: center, y: 100, width: width, height: label.frame.height + 20)
        view.addSubview(label)
        
        UIView.animate(withDuration: 3.0, delay: 0.1, animations: {
            label.alpha = 0.0
        }, completion: { _ in
            label.removeFromSuperview()
        })
    }
}
