//
//  TopHeadlinesView.swift
//  knews
//
//  Created by Vic Sukiasyan on 1/3/22.
//

import SwiftUI

struct TopHeadlinesView: View {
    @State private var isLoading = false
    @State private var showingSheet = false
    @State private var alertItem: AlertItem?
    @State private var articles: [Article] = []
    
    var body: some View {
        NavigationView {
            List(articles, id: \.id) { article in
                ArticleRow(article: article)
            }
            .navigationTitle("Top Headlines")
        }
        .onAppear { getArticles() }
    }
    
    
    func getArticles() {
        isLoading = true
        
        NetworkManager.shared.getArticles { [self] result in
            DispatchQueue.main.async {
                isLoading = false
                
                switch result {
                case .success(let articles):
                    self.articles = articles
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}

struct TopHeadlinesView_Previews: PreviewProvider {
    static var previews: some View {
        TopHeadlinesView()
    }
}
