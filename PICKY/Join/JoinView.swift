//
//  JoinView.swift
//  PICKY
//
//  Created by 김하은 on 12/13/23.
//

import UIKit

final class JoinView: BaseView {
    
    let userImage = {
        let view = UIImageView()
        view.image = UIImage.customImage(imageName: .emptyProfileImage)
        view.layer.borderColor = UIColor.systemGray6.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 60
        return view
    }()
    
    let cameraButton = {
        let view = UIButton()
        let configuration = UIImage.SymbolConfiguration(pointSize: 35)
        let image = UIImage(systemName: "camera.circle.fill", withConfiguration: configuration)
        view.setImage(image, for: .normal)
        view.tintColor = .signatureColor
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.isHidden = true
        return view
    }()

    let nickNameView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 25
        return view
    }()
    
    let nickNameImage = {
        let view = UIImageView()
        view.image = UIImage.customImage(imageName: .user)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let nickNameTextField = {
        let view = UITextField()
        view.placeholder = "닉네임"
        view.font = .customFont(ofSize: 14)
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
        view.image = UIImage.customImage(imageName: .email)
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
        view.image = UIImage.customImage(imageName: .password)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let passwordTextField = {
        let view = UITextField()
        view.placeholder = "비밀번호"
        view.font = .customFont(ofSize: 14)
        return view
    }()
    
    let joinButton = {
        let view = UIButton()
        view.backgroundColor = .signatureColor
        view.setTitle("회원가입", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .customFont(style: .bold, ofSize: 16)
        view.layer.cornerRadius = 30
        return view
    }()
    
    let loginLabel = {
        let view = UILabel()
        view.text = "계정이 있으신가요?"
        view.textColor = .lightGray
        view.font = .customFont(ofSize: 12)
        view.textAlignment = .right
        return view
    }()
    
    let loginButton = {
        let view = UIButton()
        view.setTitle("로그인", for: .normal)
        view.setTitleColor(.signatureColor, for: .normal)
        view.titleLabel?.font = .customFont(style: .bold, ofSize: 14)
        return view
    }()
    
    override func setConfiguration() {
        addSubview(userImage)
        addSubview(cameraButton)
        
        addSubview(nickNameView)
        nickNameView.addSubview(nickNameImage)
        nickNameView.addSubview(nickNameTextField)
        
        addSubview(emailView)
        emailView.addSubview(emailImage)
        emailView.addSubview(emailTextField)
        
        addSubview(passwordView)
        passwordView.addSubview(passwordImage)
        passwordView.addSubview(passwordTextField)
        
        addSubview(joinButton)
        addSubview(loginLabel)
        addSubview(loginButton)
    }
    
    override func setConstraints() {
        userImage.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide).offset(80)
            $0.size.equalTo(120)
            $0.centerX.equalTo(self)
        }
        
        cameraButton.snp.makeConstraints {
            $0.bottom.equalTo(userImage.snp.bottom)
            $0.trailing.equalTo(userImage.snp.trailing)
        }
        
        nickNameView.snp.makeConstraints {
            $0.top.equalTo(userImage.snp.bottom).offset(80)
            $0.height.equalTo(50)
            $0.leading.trailing.equalTo(self).inset(24)
        }
        
        nickNameImage.snp.makeConstraints {
            $0.leading.equalTo(nickNameView).inset(22)
            $0.width.equalTo(28)
            $0.top.bottom.equalTo(nickNameView).inset(8)
        }
        
        nickNameTextField.snp.makeConstraints {
            $0.leading.equalTo(nickNameImage.snp.trailing).offset(16)
            $0.top.bottom.equalTo(nickNameView).inset(4)
            $0.trailing.equalTo(nickNameView).inset(16)
        }
        
        emailView.snp.makeConstraints {
            $0.top.equalTo(nickNameView.snp.bottom).offset(22)
            $0.height.equalTo(50)
            $0.leading.trailing.equalTo(nickNameView)
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
        
        joinButton.snp.makeConstraints {
            $0.top.equalTo(passwordView.snp.bottom).offset(40)
            $0.height.equalTo(60)
            $0.leading.trailing.equalTo(passwordView)
        }
        
        loginLabel.snp.makeConstraints {
            $0.top.equalTo(joinButton.snp.bottom).offset(8)
            $0.height.equalTo(loginButton.snp.height)
            $0.leading.equalTo(joinButton.snp.leading)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(loginLabel.snp.top)
            $0.trailing.equalTo(joinButton.snp.trailing).inset(16)
            $0.leading.equalTo(loginLabel.snp.trailing).offset(8)
        }
    }
}
