//
//  ViewModel.swift
//  MVVM
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

struct HackerNewsViewModel {
    var hitsArray: [Hits] = []

    func getHackerNews(completion: @escaping (NewsModel?) -> ()) {
        APIManager().getNewsFrom(Constants.newsURL) { responseData in
            do {
                let newsList = try JSONDecoder().decode(NewsModel.self, from: responseData)
                completion(newsList)
            } catch let error  {
                print(error)
                completion(nil)
            }
        }
    }
    
    func getCount() -> Int {
        return hitsArray.count
    }
    
    func getTitle(forRow row: Int) -> String {
        return hitsArray[row].title ?? ""
    }
    
    func getPoints(forRow row: Int) -> String {
        if let points = hitsArray[row].points?.codingKey.stringValue {
            return points
        } else {
            return ""
        }
    }
}

