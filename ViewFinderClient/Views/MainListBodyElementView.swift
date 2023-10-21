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
    let sideMargin = 20.0
    let verticalMargin = 5.0
    
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: movies.imageURL),
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                },
                placeholder : {
                    ProgressView()
                }
            )
            VStack (alignment: .leading) {
                Text(movies.title)
                    .frame(
                        maxWidth:.infinity,
                        maxHeight:.infinity,
                        alignment:.topLeading
                    )
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text(movies.recommendations.description)
                }
                .frame(
                    maxWidth:.infinity,
                    maxHeight:.infinity,
                    alignment:.bottomLeading
                )
            }
            Text(movies.rating.description)
                .frame(
                    maxWidth:.infinity,
                    maxHeight:.infinity,
                    alignment:.topTrailing
                )
        }
        .frame(maxWidth: .infinity,  maxHeight: 80)
        .swipeActions (
            edge: .trailing,
            allowsFullSwipe: false 
        ) {
              Button {
              } label: {
                  Label("Watched", systemImage: "plus.circle")
              }
              .tint(.green)
          }
    }
}

struct MainListBodyElementView_Previews: PreviewProvider {
    static let movies = ListElementModelTest()
    static var previews: some View {
        List {
            MainListBodyElementView(movies : movies.movies)
            
        }
    }
}
