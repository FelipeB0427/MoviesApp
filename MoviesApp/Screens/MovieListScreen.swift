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
      .padding(.horizontal, 10)
      
      Spacer()
        .navigationTitle("Movies")
        .navigationBarTitleDisplayMode(.automatic)
      
      if self.movieListVM.loadingState == .success {
        MovieListView(movies: self.movieListVM.movies)
      } else if self.movieListVM.loadingState == .failed {
        FailedView()
        Spacer()
      } else if self.movieListVM.loadingState == .loading {
        LoadingView()
        Spacer()
      }
      
    }
    .embedNavigationView()
  }
}

struct MovieListScreen_Previews: PreviewProvider {
  static var previews: some View {
    MovieListScreen()
  }
}
