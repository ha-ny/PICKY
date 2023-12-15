//
//  AcessTokenError.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation

enum AcessTokenError: Int, Error {
    case unpassableToken = 401
    case unauthorized = 403
    case acessTokenExpired = 409
    case refreshTokenExpired = 418
}

extension AcessTokenError: LocalizedError {
    var description: String {
        return "다시 로그인해 주세요"
        
//        switch self {
//        case .unpassableToken:
//            return "유효하지 않은 엑세스 토큰"
//        case .unauthorized:
//            return "권한 없음"
//        case .acessTokenExpired:
//            return "엑세스 토큰이 만료되지 않음. 만료 후 재요청"
//        case .refreshTokenExpired:
//            return "다시 로그인 해주세요"
//        }
    }
}


