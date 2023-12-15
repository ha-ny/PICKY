//
//  JoinViewController.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit
import RxSwift
import RxCocoa

final class JoinViewController: UIViewController {
    
    private let mainView = JoinView()
    private let viewModel = JoinViewModel()
    private let disposeBag = DisposeBag()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.hidesBackButton = true
        bind()
    }
    
    private func bind() {
        mainView.loginButton.rx.tap.subscribe(with: self) { owner, _ in
            owner.navigationController?.popViewController(animated: true)
        }.disposed(by: disposeBag)
        
        mainView.joinButton.rx.tap.subscribe(with: self) { owner, _ in
            guard let email = owner.mainView.emailTextField.text, let password = owner.mainView.passwordTextField.text, let nick = owner.mainView.nickNameTextField.text else { owner.toastMessage(message: String.earlyExitMessge)
                return
            }

            let joinData = JoinModel(email: email, password: password.sha256(), nick: nick)
            
            owner.viewModel.requestAPI(joinData: joinData) { status in
                guard let status else {
                    owner.toastMessage(message: String.earlyExitMessge)
                    return
                }
                
                if status.rawValue == 200 {
                    let alert = UIAlertController(title: status.statusDescription, message: "지금 로그인을 통해 PICKY와 함께해요!", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "확인", style: .default) {_ in
                        owner.navigationController?.popViewController(animated: true)
                    }
                    
                    alert.addAction(ok)
                    owner.present(alert, animated: true)
                } else {
                    owner.toastMessage(message: status.statusDescription)
                }
            }
        }.disposed(by: disposeBag)
    }
}
