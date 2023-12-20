//
//  TabbarViewController.swift
//  PICKY
//
//  Created by 김하은 on 12/16/23.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tabBar.isHidden = true
        
        let picky = PickyViewController()
        let myList = MyListViewController()
        let footPrint = FootPrintViewController()
        let profile = ProfileViewController()
        
        viewControllers = [picky, myList, footPrint, profile]
    }
}
