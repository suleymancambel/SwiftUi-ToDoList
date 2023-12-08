//
//  Extensions.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 8.12.2023.
//

import Foundation


extension Encodable {
    
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
