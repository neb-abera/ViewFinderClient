//
//  File.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation


class ListElementModelTest : Identifiable , ObservableObject {
    
    @Published var movies = ListElementModel(
                            userID: "test@gmail.com",
                            titleID: "tt6334354",
                            title: "Suicide Squad",
                            rating: 7.2,
                            recommendations: 0,
                            watched: false,
                            rejected: false,
                            imageURL: "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/87889/89755/Suicide-Squad-Final-Style-Mushroom-Cloud-Poster-buy-original-movie-posters-at-starstills__53963.1469011134.jpg?c=2"
                            )
    
}

