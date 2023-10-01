//
//  File.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation


class ListElementViewModel : Identifiable , ObservableObject {
    @Published var movies : [ListElementModel]
    
    init(){
        self.movies = []
    }
    
    init(movies: [ListElementModel]) {
        self.movies = movies
    }
}

