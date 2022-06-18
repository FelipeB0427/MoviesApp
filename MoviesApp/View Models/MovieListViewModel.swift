//
//  MovieListViewModel.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 14/03/22.
//

import Foundation
import SwiftUI

class MovieListViewModel: ObservableObject {
    // Quando colocamos dados nessa variavel, o SwiftUI irá observar mudanças.
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func searchByName(_ name: String) {
        httpClient.getMoviesBy(search: name) { result in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        // Passando por todos os filmes
                        self.movies = movies.map(MovieViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct MovieViewModel {
    let movie: Movie
    
    var imdbId: String {
        movie.imdbId
    }
    
    var title: String {
        movie.title
    }
    
    var poster: String {
        movie.poster
    }
    
    var year: String {
        movie.year
    }
}
