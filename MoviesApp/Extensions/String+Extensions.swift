//
//  String+Extensions.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import Foundation

extension String {
  func trimmedAndEscaped() -> String {
    let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
    
    return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
  }
}
