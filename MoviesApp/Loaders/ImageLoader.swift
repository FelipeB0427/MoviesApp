//
//  ImageLoader.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 02/03/22.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var downlaodedData: Data?
    
    func downloadImage(url: String) {
        guard let imageURL = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, error  in
            guard let data = data, error == nil else { return }
            
            DispatchQueue.main.async {
                self.downlaodedData = data
            }
        }
        .resume()
    }
}
