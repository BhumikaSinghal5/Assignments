//
//  ContentView.swift
//  HackerNewsWithSwiftUI
//
//  Created by BKS-GGS on 15/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var hits: [Hits] = []
    
    var body: some View {
        NavigationView {
            List(hits) { hit in
                NavigationLink(destination: Text((hit.points)?.codingKey.stringValue ?? "")) {
                    HStack {
                        Text((hit.points)?.codingKey.stringValue ?? "")
                        Text(hit.title ?? "")
                    }
                }
            }
            .navigationTitle("Hackers News")
        }
        .onAppear {
            getHackerNews()
        }
    }
    
    func getHackerNews() {
        APIManager().getNewsFrom(Constants.newsURL) { newsModel in
            guard let hits = newsModel.hits else {
                return
            }

            self.hits = hits
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
