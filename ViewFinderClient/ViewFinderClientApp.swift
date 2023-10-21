//
//  ViewFinderClientApp.swift
//  ViewFinderClient
//
//  Created by Nebyou Abera on 9/3/23.
//

import SwiftUI

@main
struct ViewFinderClientApp: App {
    @StateObject var movies = ListElementViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(movies : movies)
        }
    }
}
