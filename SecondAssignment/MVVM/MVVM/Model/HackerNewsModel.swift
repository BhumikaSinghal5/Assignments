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

struct Hits: Decodable {
    var title: String?
    var url: String?
    var points: Int?
}
