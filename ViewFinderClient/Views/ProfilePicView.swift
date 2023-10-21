//
//  ProfilePicView.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 9/30/23.
//

import Foundation
import SwiftUI

struct ProfilePicView : View {
    private var userProfileURL : String = "https://people.com/thmb/CBFic124GCK-2LOZ0SVhGExksGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(216x0:218x2)/pierce-brosnan-2-1-9fb80c3d3a0d49f48304b042b3a7c402.jpg"
    var body: some View {
        AsyncImage(url: URL(string: "\(userProfileURL)")) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
            .foregroundColor(.white)
            .background(Color.red)
            .padding()
            .frame(width: .infinity, height: 160)
    }
}

struct ProfilePicView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicView()
    }
}
