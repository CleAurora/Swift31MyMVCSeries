//
//  Show.swift
//  MyMVCSeries
//
//  Created by Cleís Aurora Pereira on 16/11/20.
//

import Foundation

class Shows: NSObject {
    var id: Int!
    var name: String!
    var genres: [String]!
    var image: [String: String]!
    var summary: String!
    var rating: [String: Any]!

    init(fromDictionary dictionary: [String:Any]) {
        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
        genres = dictionary["genres"] as? [String]
        image = dictionary["image"] as? [String: String]
        summary = dictionary["summary"] as? String
        rating = dictionary["rating"] as? [String: Any]
    }
}
