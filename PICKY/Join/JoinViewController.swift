//
//  JoinViewController.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit

class JoinViewController: UIViewController {

    let mainView = JoinView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.hidesBackButton = true
        addTargets()
    }
    
    func addTargets() {
        mainView.loginButton.addTarget(self, action: #selector(loginButtonTap), for: .touchUpInside)
    }
    
    @objc func loginButtonTap() {
        navigationController?.popViewController(animated: true)
    }
}
