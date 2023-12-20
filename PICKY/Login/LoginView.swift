//
//  LoginView.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit

final class LoginView: BaseView {
    
    let logoLabel = {
        let view = UILabel()
        view.text = "PICKY"
        view.textColor = .signatureColor
        view.font = .customFont(style: .logo, ofSize: 45)
        return view
    }()
    
    let emailView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 25
        return view
    }()
    
    let emailImage = {
        let view = UIImageView()
        view.image = UIImage.iconEmail
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let emailTextField = {
        let view = UITextField()
        view.placeholder = "이메일"
        view.font = .customFont(ofSize: 14)
        return view
    }()
    
    let passwordView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 25
        return view
    }()
    
    let passwordImage = {
        let view = UIImageView()
        view.image = UIImage.iconPassword
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let passwordTextField = {
        let view = UITextField()
        view.placeholder = "비밀번호"
        view.font = .customFont(ofSize: 14)
        return view
    }()
    
    let loginButton = {
        let view = UIButton()
        view.backgroundColor = .signatureColor
        view.setTitle("로그인", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .customFont(style: .bold, ofSize: 16)
        view.layer.cornerRadius = 30
        return view
    }()
    
    let joinLabel = {
        let view = UILabel()
        view.text = "계정이 없으신가요?"
        view.textColor = .lightGray
        view.font = .customFont(ofSize: 12)
        view.textAlignment = .right
        return view
    }()
    
    let joinButton = {
        let view = UIButton()
        view.setTitle("회원가입", for: .normal)
        view.setTitleColor(.signatureColor, for: .normal)
        view.titleLabel?.font = .customFont(style: .bold, ofSize: 14)
        return view
    }()
    
    override func setConfiguration() {
        addSubview(logoLabel)
        addSubview(emailView)
        emailView.addSubview(emailImage)
        emailView.addSubview(emailTextField)
        
        addSubview(passwordView)
        passwordView.addSubview(passwordImage)
        passwordView.addSubview(passwordTextField)
        
        addSubview(loginButton)
        addSubview(joinLabel)
        addSubview(joinButton)
    }
    
    override func setConstraints() {
        logoLabel.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide).offset(100)
            $0.centerX.equalTo(self)
        }
        
        emailView.snp.makeConstraints {
            $0.top.equalTo(logoLabel.snp.bottom).offset(110)
            $0.height.equalTo(50)
            $0.leading.trailing.equalTo(self).inset(24)
        }
        
        emailImage.snp.makeConstraints {
            $0.leading.equalTo(emailView).inset(22)
            $0.width.equalTo(28)
            $0.top.bottom.equalTo(emailView).inset(8)
        }
        
        emailTextField.snp.makeConstraints {
            $0.leading.equalTo(emailImage.snp.trailing).offset(16)
            $0.top.bottom.equalTo(emailView).inset(4)
            $0.trailing.equalTo(emailView).inset(16)
        }
        
        passwordView.snp.makeConstraints {
            $0.top.equalTo(emailView.snp.bottom).offset(22)
            $0.height.equalTo(50)
            $0.leading.trailing.equalTo(emailView)
        }
        
        passwordImage.snp.makeConstraints {
            $0.leading.equalTo(passwordView).inset(22)
            $0.width.equalTo(28)
            $0.top.bottom.equalTo(passwordView).inset(4)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.leading.equalTo(passwordImage.snp.trailing).offset(16)
            $0.top.bottom.trailing.equalTo(passwordView).inset(8)
            $0.trailing.equalTo(passwordView).inset(16)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordView.snp.bottom).offset(40)
            $0.height.equalTo(60)
            $0.leading.trailing.equalTo(passwordView)
        }
        
        joinLabel.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(8)
            $0.height.equalTo(joinButton.snp.height)
            $0.leading.equalTo(loginButton.snp.leading)
        }
        
        joinButton.snp.makeConstraints {
            $0.top.equalTo(joinLabel.snp.top)
            $0.trailing.equalTo(loginButton.snp.trailing).inset(16)
            $0.leading.equalTo(joinLabel.snp.trailing).offset(8)
        }
    }
}
