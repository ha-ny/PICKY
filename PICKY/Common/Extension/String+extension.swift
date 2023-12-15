//
//  String+extension.swift
//  PICKY
//
//  Created by 김하은 on 12/16/23.
//

import Foundation
import CryptoKit

extension String {
    static let earlyExitMessge = "다시 시도해 주세요!"
    
    func sha256() -> String {
        let data = self.data(using: .utf8)
        let hash = SHA256.hash(data: data!)
        return hash.compactMap { String(format: "%02x", $0) }.joined()
    }
}
