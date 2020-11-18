//
//  TypeCarModel.swift
//  trainingAPIAndXib
//
//  Created by Cleís Aurora Pereira on 18/11/20.
//

import Foundation

class TypeCarModel: NSObject {
    var name: String!
    var id : String!

    init(fromDictionary dictionary : [String: Any]){
        name = dictionary["nome"] as? String
        id = dictionary["codigo"] as? String
    }
}
