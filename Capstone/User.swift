//
//  User.swift
//  Capstone
//
//  Created by Matthew Gayle on 3/26/23.
//

import Foundation

public struct User: Codable {
    let uid: String?
    let name: String?
    let userName: String?
    let role: String?
    
    enum CodingKeys: String, CodingKey {
        case uid
        case name
        case userName
        case role = "donor"
        
    }
    var dictionary: [String: Any] {
        let data = (try? JSONEncoder().encode(self)) ?? Data()
        return (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]) ?? [:]
    }
    
}
