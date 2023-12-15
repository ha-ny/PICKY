//
//  JoinError.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

enum JoinError: Int, Error {
    case missingValue = 400
    case joinedUser = 409
}

extension JoinError: LocalizedError {
    var description: String {
        switch self {
        case .missingValue:
            return "정보를 모두 입력해 주세요"
        case .joinedUser:
            return "이미 가입된 유저에요"
        }
    }
}
