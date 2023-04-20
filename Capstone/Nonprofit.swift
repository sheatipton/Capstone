//
//  Nonprofit.swift
//  Capstone
//
//  Created by Matthew Gayle on 4/13/23.
//

import Foundation
import Foundation

public struct Nonprofit: Codable, Identifiable {
    
    public let id = UUID().uuidString
    let nid: String?
    let name: String?
    let items: [String]?
    let headline: String?
    let headlineImage: String?
    let aboutUs: String?
    let address: String?
    let site: String?
    let profileImg: String?
    let operationHours: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case nid
        case name
        case items
        case headline
        case headlineImage
        case aboutUs
        case address
        case site
        case profileImg
        case operationHours
        
    }
    var dictionary: [String: Any] {
        let data = (try? JSONEncoder().encode(self)) ?? Data()
        return (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]) ?? [:]
    }
    
}
