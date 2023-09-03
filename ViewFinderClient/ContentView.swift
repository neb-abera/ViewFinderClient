//
//  ContentView.swift
//  ViewFinderClient
//
//  Created by Nebyou Abera on 9/3/23.
//

import SwiftUI

struct ContentView: View {
    private var userProfileURL : String = "https://people.com/thmb/CBFic124GCK-2LOZ0SVhGExksGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(216x0:218x2)/pierce-brosnan-2-1-9fb80c3d3a0d49f48304b042b3a7c402.jpg"
    private var viewFinderLogo : String = "https://e7.pngegg.com/pngimages/868/941/png-clipart-binoculars-graphy-computer-icons-binocular-logo-monochrome.png"
    private var movies : Array<(userID: String, titleID: String, title: String, rating: Double, recommendations: Int, watched: Bool, rejected: Bool, imageURL: String)> = [
        (userID: "test@gmail.com",
         titleID: "tt6334354",
         title: "Suicide Squad",
         rating: 7.2,
         recommendations: 0,
         watched: false,
         rejected: false,
         imageURL: "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/87889/89755/Suicide-Squad-Final-Style-Mushroom-Cloud-Poster-buy-original-movie-posters-at-starstills__53963.1469011134.jpg?c=2"
        ),
        (userID: "test@gmail.com",
         titleID: "tt0910970",
         title: "Wall E",
         rating: 8.4,
         recommendations: 0,
         watched: false,
         rejected: false,
         imageURL: "https://m.media-amazon.com/images/I/51RoZRgIHtL._AC_UF894,1000_QL80_.jpg"
        ),
        (userID: "test@gmail.com",
         titleID: "tt0137523",
         title: "Fight Club",
         rating: 8.8,
         recommendations: 0,
         watched: false,
         rejected: false,
         imageURL: "https://m.media-amazon.com/images/I/51OsUdPrjoL._AC_UF894,1000_QL80_.jpg"),
        (userID: "test@gmail.com",
         titleID: "tt0120338",
         title: "Titanic",
         rating: 7.9,
         recommendations: 0,
         watched: false,
         rejected: false,
         imageURL: "https://m.media-amazon.com/images/I/71yCx0m21kL.jpg"
        )
    ]
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    AsyncImage(url: URL(string: "\(viewFinderLogo)")) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                        .foregroundColor(.white)
                        .background(Color.red)
                        .padding()
                        .frame(width: 200, height: 200)
                    AsyncImage(url: URL(string: "\(userProfileURL)")) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                        .foregroundColor(.white)
                        .background(Color.red)
                        .padding()
                        .frame(width: 200, height: 200)
                }
                ZStack {
                    ForEach (movies, id: \.titleID){ movie in
                        CardView(movie: movie)
                    }
                    .frame(height: 420)
                    .background(Color.red)
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
