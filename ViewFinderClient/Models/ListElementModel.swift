//
//  MainListBodyElementViewModel.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation

struct  ListElementModel : Identifiable {
    var id : String  = UUID().uuidString
    var userID: String
    var titleID: String
    var title: String
    var rating: Double
    var recommendations: Int
    var watched: Bool
    var rejected: Bool
    var imageURL: String
}
