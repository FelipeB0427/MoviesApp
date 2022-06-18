//
//  LoadingView.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
      VStack {
        Image(systemName: "ellipsis.rectangle.fill")
          .resizable()
          .frame(width: 120, height: 80, alignment: .center)
          .foregroundColor(.yellow)
        Text("Loading...")
          .font(.headline)
          .foregroundColor(.gray)
      }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
