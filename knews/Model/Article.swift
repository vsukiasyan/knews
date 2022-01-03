//
//  Article.swift
//  knews
//
//  Created by Vic Sukiasyan on 1/3/22.
//

import Foundation

struct Article: Identifiable, Decodable {
    let id = UUID()
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let content: String?
}

struct ArticleResponse: Decodable {
    let articles: [Article]
}

struct MockArticleData {
    static let articles = [sampleArticle, sampleArticle, sampleArticle]
    
    static let sampleArticle = Article(author: "John Appleseed",
                                       title: "Apple Debuts new iPhone and new event next week!",
                                       description: "Blah blah blah alkjfda; aklfjaslkfjas f;lkajsf l;aksjf l;sajf ",
                                       url: "http://www.google.com",
                                       urlToImage: "https://cdn.vox-cdn.com/thumbor/31wcDz-dd7XKS5dJnkQVko0eII0=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/12645609/acastro_180827_1777_0002.jpg",
                                       content: "Someth9ng")
}

