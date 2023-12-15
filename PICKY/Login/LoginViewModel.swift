//
//  LoginViewModel.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation
import Moya

final class LoginViewModel {
    
    private let apiManager = APIManager<APITarget.Account>()
    
    func requestAPI(loginModel: LoginModel, completion: @escaping (LoginStatusCode?) -> ()) {
        apiManager.requestAPI(.login(model: loginModel)) { success in
            guard let loginStatusCode = LoginStatusCode(rawValue: success.statusCode) else {
                completion(nil)
                return
            }
            
            if loginStatusCode.rawValue == 200 {
                do {
                    let data = try JSONDecoder().decode(ResponseLoginModel.self, from: success.data)
                    print(data.token)
                    print(data.refreshToken)
                    UserDefaults.standard.setValue(data.token, forKey: UserDefaultsKeyType.token.rawValue)
                    UserDefaults.standard.setValue(data.refreshToken, forKey: UserDefaultsKeyType.refreshToken.rawValue)
                } catch(let error) {
                    print(error)
                    completion(nil)
                }
            } else {
                completion(loginStatusCode)
            }
        }
    }
    
}
