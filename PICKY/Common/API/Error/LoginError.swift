//
//  LoginError.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

enum LoginError: Int, Error {
    case missingValue = 400
    case failedLogin = 401
}

extension LoginError: LocalizedError {
    var description: String {
        switch self {
        case .missingValue:
            return "정보를 모두 입력해 주세요"
        case .failedLogin:
            return "로그인에 실패했어요"
        }
    }
}
