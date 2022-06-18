//
//  FailedView.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import SwiftUI

struct FailedView: View {
    var body: some View {
      VStack {
        Image(systemName: "xmark.octagon.fill")
          .resizable()
          .foregroundColor(.red)
          .frame(width: 120, height: 120, alignment: .center)
        Text("There is no movie with this name!")
          .font(.headline)
          .foregroundColor(.gray)
      }
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        FailedView()
    }
}
