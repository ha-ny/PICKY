//
//  JoinStatusCode.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

enum JoinStatusCode: Int, Error {
    case success = 200
    case missingValue = 400
    case joinedUser = 409
}

extension JoinStatusCode: LocalizedError {
    var statusDescription: String {
        switch self {
        case .success:
            return "가입 성공"
        case .missingValue:
            return "정보를 모두 입력해 주세요"
        case .joinedUser:
            return "사용 중인 이메일이에요"
        }
    }
}
