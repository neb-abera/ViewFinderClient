//
//  MainListBodyView.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation
import SwiftUI

struct MainListBodyView : View {
    let movies : ListElementViewModel

    var body: some View {
        VStack {
            //            UpperNavView()
            HStack {
                LogoView()
                ProfilePicView()
            }
            VStack {
                ForEach(movies.movies){ item in
                    MainListBodyElementView(movies: item)
                }
            }
//            ZStack {
//                ForEach (movies, id: \.titleID){ movie in
//                    CardView(movie: movie)
//                }
//                .frame(height: 420)
//                .background(Color.red)
//                .padding()
//            }
            Spacer()
        }
    }
}

struct MainListBodyView_Previews: PreviewProvider {
    static var movies = ListElementModelListTest()

    static var previews: some View {
        MainListBodyView(movies: movies.movies)
    }
}
