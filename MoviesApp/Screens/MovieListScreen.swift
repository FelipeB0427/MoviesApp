//
//  MovieListScreen.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import SwiftUI

struct MovieListScreen: View {
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName: String = ""
    
    init() {
        self.movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack {
            TextField("Search", text: $movieName, onEditingChanged: { _ in }, onCommit: {
                // Perform Search
                self.movieListVM.searchByName(self.movieName)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
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
