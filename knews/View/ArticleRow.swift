//
//  ArticleRow.swift
//  knews
//
//  Created by Vic Sukiasyan on 1/3/22.
//

import SwiftUI

struct ArticleRow: View {
    
    let article: Article
    
    var body: some View {
        HStack {
            ArticleRemoteImage(urlString: article.urlToImage ?? "https://cdn.vox-cdn.com/thumbor/31wcDz-dd7XKS5dJnkQVko0eII0=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/12645609/acastro_180827_1777_0002.jpg")
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(article.title ?? "No Title Available")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                
                Text(article.author ?? "No Author Available")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}


struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(article: MockArticleData.sampleArticle)
    }
}
