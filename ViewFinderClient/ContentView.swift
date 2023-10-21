//
//  ContentView.swift
//  ViewFinderClient
//
//  Created by Nebyou Abera on 9/3/23.
//

import SwiftUI

struct ContentView: View {
//    @StateObject var movies = ListElementViewModel()
    @ObservedObject var movies : ListElementViewModel
    var body: some View {
        TabView {
            MainListView(movies : movies)
                .tabItem{
                    Image(systemName: "folder.fill")
                    Text("Main")
                }
            Text("Watched")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Watched")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            Text("Friends")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Friends")
                }
            Text("Settings")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Settings")
                }
            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var movies = ListElementModelListTest()
    static var previews: some View {
        ContentView(movies : movies.movies)
    }
}
