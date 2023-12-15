//
//  APITarget.swift
//  PICKY
//
//  Created by 김하은 on 12/14/23.
//

import Foundation
import Moya

struct APITarget {
    enum Account {
        case login(model: LoginModel)
        case join(model: JoinModel)
        case reAcessToken(authorization: String, refresh: String)   //토큰 갱신
        case withdraw(authorization: String)       //탈퇴
    }
    
    enum Post {
        case create
        case read
        case update
        case delete
        case userPost   //유저별 게시글 조회
    }
    
    enum Comment {
        case create
        case update
        case delete
    }
    
    enum Footprint {
        case read
        case update     //발자국 생성 및 삭제 - toggle
    }
    
    enum Profile {
        case read
        case update
    }
}

// MARK: - Account
extension APITarget.Account: TargetType {
    var baseURL: URL {
        //URL(string: APIInfo.baseURL)!
        return URL(string: APIInfo.baseURLTokenTest)!
    }
    
    var path: String {
        switch self {
        case .login:
            return "/login"
        case .join:
            return "/join"
        case .reAcessToken:
            return "/refresh"
        case .withdraw:
            return "/withdraw"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .login, .join:
            return .post
        case .reAcessToken, .withdraw:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .login(let model):
            return .requestJSONEncodable(model)
        case .join(let model):
            return .requestJSONEncodable(model)
        case .reAcessToken, .withdraw:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .login, .join:
            return ["Content-Type" : "application/json", "SesacKey" : APIInfo.key]
        case .reAcessToken(let authorization, let refresh):
            return ["Authorization" : authorization, "SesacKey" : APIInfo.key, "Refresh": refresh]
        case .withdraw(let authorization):
            return ["Authorization" : authorization, "SesacKey" : APIInfo.key]
        }
    }
}

// MARK: - Post


// MARK: - Comment


// MARK: - Footprint


// MARK: - Profile
