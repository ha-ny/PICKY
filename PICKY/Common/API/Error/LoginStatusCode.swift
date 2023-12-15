//
//  LoginStatusCode.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

enum LoginStatusCode: Int, Error {
    case success = 200
    case missingValue = 400
    case failedLogin = 401
}

extension LoginStatusCode: LocalizedError {
    var statusDescription: String {
        switch self {
        case .success:
            return "로그인 성공"
        case .missingValue:
            return "정보를 모두 입력해 주세요"
        case .failedLogin:
            return "로그인에 실패했어요"
        }
    }
}
