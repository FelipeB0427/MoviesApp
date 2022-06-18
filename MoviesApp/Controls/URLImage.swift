//
//  URLImage.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 02/03/22.
//

import SwiftUI

struct URLImage: View {
    let url: String
    let placeholder: String
    
    @ObservedObject  var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageLoader.downlaodedData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        } else {
            return Image("placeholder").resizable()
        }
    }
}
