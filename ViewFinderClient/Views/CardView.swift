//
//  CardView.swift
//  ViewFinderClient
//
//  Created by Nebyou Abera on 9/3/23.
//

import SwiftUI

struct CardView: View {
    var movie: ListElementModel
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: nil, height: nil)
//                .border(.white, width:6.0)
                .cornerRadius(4)
                .foregroundColor(color.opacity(0.9))
                .shadow(radius: 4)
            VStack {
                Text(movie.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                HStack {
                    Text("\(round(movie.rating * 10) / 10.0)") //doesn't round correctly
                        .foregroundColor(.white)
                }
                AsyncImage(url: URL(string: movie.imageURL),content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 250)
                },
                           placeholder: {
                    ProgressView()
                })
            }
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation{
                        changeColor(width: offset.width)
                    }
                } .onEnded { _ in
                        withAnimation{
                            swipeCard(width: offset.width)
                            changeColor(width: offset.width)
                        }
                    }
                
        )
    }
    
    func swipeCard(width: CGFloat) {
                switch width {
                case -500...(-150):
                    print("\(movie.title) removed")
                    offset = CGSize(width: 0500, height: 0)
                case 150...500:
                    print("\(movie.title) added")
                default:
                    offset = .zero
                }
    }
            
    func changeColor (width: CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .black
        }
    }
}
    
    
struct CardView_Previews: PreviewProvider {
    static var movie = ListElementModelTest()
        static var previews: some View {
            CardView(movie: movie.movies)
        }
}



