//
//  URL+Extensions.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 13/03/22.
//

import Foundation

extension URL {
  static func forMoviesByImdbId(_ imdbId: String) -> URL? {
    return URL(string: "http://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
  }
  
  static func forMoviesByName(_ name: String) -> URL? {
    return URL(string: "http://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
  }
}
