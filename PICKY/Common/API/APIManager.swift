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
    
    func requestAPI<Model: Decodable>(_ target: target, completion: @escaping (Result<Model, Error>) -> ()) {
        provider.request(target) { result in
            switch result {
            case .success(let response):
                do {
                    let data = try JSONDecoder().decode(Model.self, from: response.data)
                    completion(.success(data))
                } catch let error {
                    print(error)
                }
            case.failure(let error):
                print(error)
            }
        }
    }
}
