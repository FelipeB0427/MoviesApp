//
//  View+Extensions.swift
//  MoviesApp
//
//  Created by Felipe Brigagão de Almeida on 18/06/22.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
