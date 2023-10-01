//
//  MainListView.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 10/1/23.
//

import Foundation
import SwiftUI

struct MainListView : View {
    @ObservedObject var movies : ListElementViewModel
    
    var body: some View {
//        UpperNavView()
        NavigationView {
            MainListBodyView(movies : movies)
                .toolbar {
                    ToolbarItem (placement: .navigationBarLeading){
                        Button("Back"){}
                    }
                    ToolbarItem (placement: .navigationBarTrailing){
                        Button("Add"){}
                    }
                }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var movies = ListElementModelListTest()
    
    static var previews: some View {
        MainListView(movies : movies.movies)
    }
}
