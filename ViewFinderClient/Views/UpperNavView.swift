//
//  TopNavView.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 9/30/23.
//

import Foundation
import SwiftUI

struct UpperNavView : View {
    var body : some View {
        NavigationView {
            Text("Text")
                .toolbar {
                    ToolbarItem (placement: .navigationBarLeading){
                        Button("Back"){}
                    }
                }
        }
    }
}

struct UpperNavView_Previews: PreviewProvider {
    static var previews: some View {
        UpperNavView()
    }
}
