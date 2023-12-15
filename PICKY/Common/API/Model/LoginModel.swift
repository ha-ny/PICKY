//
//  LoginModel.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

struct LoginModel: Encodable {
    let email: String
    let password: String
}

struct ResponseLoginModel: Decodable {
    let token: String
    let refreshToken: String
}


