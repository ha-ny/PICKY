//
//  LoginViewController.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit
import RxSwift
import RxCocoa

final class LoginViewController: UIViewController {
    
    private let mainView = LoginView()
    private let viewModel = LoginViewModel()
    private let disposeBag = DisposeBag()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        bind()
    }
    
    private func bind() {
        mainView.loginButton.rx.tap.subscribe(with: self) { owner, _ in
            guard let email = owner.mainView.emailTextField.text, let password = owner.mainView.passwordTextField.text else {
                owner.toastMessage(message: String.earlyExitMessge)
                return
            }
            
            let loginData = LoginModel(email: email, password: password)
            owner.viewModel.requestAPI(loginModel: loginData) { status in
                guard let status else {
                    owner.toastMessage(message: String.earlyExitMessge)
                    return
                }
                
                if status.rawValue == 200 {
                    let vc = PickyViewController()
                    
                } else {
                    owner.toastMessage(message: status.statusDescription)
                }
            }
        }.disposed(by: disposeBag)
        
        mainView.joinButton.rx.tap.subscribe(with: self) { owner, _ in
            let vc = JoinViewController()
            vc.modalPresentationStyle = .fullScreen
            owner.navigationController?.pushViewController(vc, animated: true)
        }.disposed(by: disposeBag)
    }
}
