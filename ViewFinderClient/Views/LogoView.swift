//
//  LogoView.swift
//  ViewFinderClient
//
//  Created by Terry Kim on 9/30/23.
//

import Foundation
import SwiftUI

struct LogoView : View {
    private var viewFinderLogo : String = "https://e7.pngegg.com/pngimages/868/941/png-clipart-binoculars-graphy-computer-icons-binocular-logo-monochrome.png"
    var body: some View {
        AsyncImage(url: URL(string: "\(viewFinderLogo)")) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
            .foregroundColor(.white)
            .background(Color.red)
            .padding()
            .frame(width: 200, height: 200)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
