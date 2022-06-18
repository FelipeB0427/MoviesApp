//
//  Rating.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 02/03/22.
//

import SwiftUI

struct Rating: View {
    @Binding var rating: Int?
    
    private func startType(index: Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...10, id: \.self) { index in
                Image(systemName: self.startType(index: index))
                    .foregroundColor(.orange)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
}
