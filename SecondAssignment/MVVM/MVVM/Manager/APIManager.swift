//
//  APIManager.swift
//  MVC
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

class APIManager {
    
    func getNewsFrom(_ urlString: String?, completion: @escaping (Data) -> ()) {
        
        guard let url = urlString, let serverURL = URL(string: url) else {
            print("Incorrect server URL")
            return
        }
        
        URLSession.shared.dataTask(with: serverURL) { data, response, error in
            if error != nil {
                print("Unable to get the data due to error received")
                return
            }
            
            guard let responseData = data else {
                print("No data received")
                return
            }
            
            completion(responseData)
        }.resume()
    }
}
