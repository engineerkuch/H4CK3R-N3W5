//
//  PostData.swift
//  H4CK3R N3W5
//
//  Created by Kelvin KUCH on 25.11.2022.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
