//
//  MainListBodyElementView.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation
import SwiftUI

struct MainListBodyElementView : View {
    let movies : ListElementModel
    
    var body: some View {
        HStack {
            Text(movies.title)
        }
    }
}

struct MainListBodyElementView_Previews: PreviewProvider {
    static let movies = ListElementModelTest()
    static var previews: some View {
        MainListBodyElementView(movies : movies.movies)
    }
}
