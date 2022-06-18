//
//  ViewModelBase.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import Foundation

enum LoadingState {
  case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
  @Published var loadingState: LoadingState = .none
}
