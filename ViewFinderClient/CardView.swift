//
//  CardView.swift
//  ViewFinderClient
//
//  Created by Nebyou Abera on 9/3/23.
//

import SwiftUI

struct CardView: View {
    var movie: (userID: String, titleID: String, title: String, rating: Double, recommendations: Int, watched: Bool, rejected: Bool, imageURL: String)
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white, width:6.0)
                .cornerRadius(4)
                .foregroundColor(color.opacity(0.9))
                .shadow(radius: 4)
            VStack {
                Text(movie.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(movie: (userID: "test@gmail.com", titleID: "tt0910970", title: "Wall E", rating: 8.4, recommendations: 0, watched: false, rejected: false, imageURL: "https://m.media-amazon.com/images/I/51RoZRgIHtL._AC_UF894,1000_QL80_.jpg"))
    }
}

