//
//  ValidationEmailError.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

enum ValidationEmailError: Int, Error {
    case missingValue = 400
    case unavailableEmail = 409
}

extension ValidationEmailError: LocalizedError {
    var description: String {
        switch self {
        case .missingValue:
            return "이메일을 입력해 주세요"
        case .unavailableEmail:
            return "사용할 수 없는 이메일이에요"
        }
    }
}
