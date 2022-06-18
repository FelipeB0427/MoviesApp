//
//  MovieListScreen.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import SwiftUI

struct MovieListScreen: View {
    @ObservedObject private var movieListVM: MovieListViewModel
    
    init() {
        self.movieListVM = MovieListViewModel()
        self.movieListVM.searchByName("batman")
    }
    var body: some View {
        VStack {
            MovieListView(movies: self.movieListVM.movies)
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.automatic)
        }
        .embedNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
