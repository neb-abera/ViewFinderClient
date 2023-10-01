//
//  File.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation


class ListElementModelListTest : Identifiable , ObservableObject {
    
    @Published var movies = ListElementViewModel(movies : [
            ListElementModel(userID: "test@gmail.com",
                             titleID: "tt6334354",
                             title: "Suicide Squad",
                             rating: 7.2,
                             recommendations: 0,
                             watched: false,
                             rejected: false,
                             imageURL: "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/87889/89755/Suicide-Squad-Final-Style-Mushroom-Cloud-Poster-buy-original-movie-posters-at-starstills__53963.1469011134.jpg?c=2"
                            ),
            ListElementModel(userID: "test@gmail.com",
                             titleID: "tt0910970",
                             title: "Wall E",
                             rating: 8.4,
                             recommendations: 0,
                             watched: false,
                             rejected: false,
                             imageURL: "https://m.media-amazon.com/images/I/51RoZRgIHtL._AC_UF894,1000_QL80_.jpg"
                            ),
            ListElementModel(userID: "test@gmail.com",
                             titleID: "tt0137523",
                             title: "Fight Club",
                             rating: 8.8,
                             recommendations: 0,
                             watched: false,
                             rejected: false,
                             imageURL: "https://m.media-amazon.com/images/I/51OsUdPrjoL._AC_UF894,1000_QL80_.jpg"
                            ),
            ListElementModel(userID: "test@gmail.com",
                             titleID: "tt0120338",
                             title: "Titanic",
                             rating: 7.9,
                             recommendations: 0,
                             watched: false,
                             rejected: false,
                             imageURL: "https://m.media-amazon.com/images/I/71yCx0m21kL.jpg"
                            )
            ])
    
}

