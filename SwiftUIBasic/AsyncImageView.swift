//
//  AsyncImage.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/21.
//

import SwiftUI

struct AsyncImageView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url, content: { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        })
        .frame(width: 100, height: 100)
    }
}

#Preview {
    AsyncImageView()
}
