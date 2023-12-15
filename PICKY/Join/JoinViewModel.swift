//
//  JoinViewModel.swift
//  PICKY
//
//  Created by 김하은 on 12/15/23.
//

import Foundation
import Moya

class JoinViewModel {
    
    private let apiManager = APIManager<APITarget.Account>()

    func translation(joinData: JoinModel, completion: @escaping (JoinStatusCode?) -> ()) {
        apiManager.requestAPI(.join(model: joinData)) { success in
            guard let joinStatusCode = JoinStatusCode(rawValue: success.statusCode) else {
                completion(nil)
                return
            }
            
            completion(joinStatusCode)
        }
    }
}
