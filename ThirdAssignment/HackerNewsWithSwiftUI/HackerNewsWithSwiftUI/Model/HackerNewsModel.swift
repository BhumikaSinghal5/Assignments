//
//  HackerNewsModel.swift
//  MVC
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

struct NewsModel: Decodable {
    var hits: [Hits]?
}

struct Hits: Decodable, Identifiable {
    var id          : String {
        return objectID
    }
    let objectID    : String
    let points      : Int?
    let title       : String?
    let url         : String?
}
