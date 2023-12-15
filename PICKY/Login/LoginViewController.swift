//
//  LoginViewController.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let mainView = LoginView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addTargets()
    }
    
    func addTargets() {
        mainView.joinButton.addTarget(self, action: #selector(joinButtonTap), for: .touchUpInside)
    }
    
    @objc func joinButtonTap() {
        let vc = JoinViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
}
