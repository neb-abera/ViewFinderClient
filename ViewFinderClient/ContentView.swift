//
//  ContentView.swift
//  ViewFinderClient
//
//  Created by Nebyou Abera on 9/3/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var movies = ListElementViewModel()
    var body: some View {
        TabView {
            MainListView(movies : movies)
                .tabItem{
                    Image(systemName: "folder.fill")
                    Text("Main")
                }
            Text("Favourites Screen")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Main")
                }
            Text("Friends")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Friends")
                }
            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
