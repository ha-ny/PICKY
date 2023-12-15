//
//  APIManager.swift
//  PICKY
//
//  Created by 김하은 on 12/14/23.
//

import Foundation
import Moya

struct APIManager<target: TargetType> {
    private let provider = MoyaProvider<target>()
    
    func requestAPI(_ target: target, completion: @escaping (Response) -> ()) {
        provider.request(target) { result in
            print("------------------------", result)
            switch result {
            case .success(let success):
                completion(success)
            case .failure(let error):
                print(error)
            }
        }
    }
}
