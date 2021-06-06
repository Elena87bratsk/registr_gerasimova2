//
//  HomeView.swift
//  registr_gerasimova
//
//  Created by user on 05.06.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct HomeView: View {
    @StateObject var movieObject = Movieobject()
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "bookmark")
                Spacer()
                Text ("Social")
                Spacer()
                Image(systemName: "bell")
            }
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
//                    ForEach(0...15, id: \.self) {
//                        _ in Image ("Pl")
//                            .resizable()
//                            .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//              }
                    ForEach(movieObject.posters, id: \.self) { poster in
                        WebImage(url: URL (string: "http://cinema.areas.su/up/images/\(poster)"))
                            .resizable()
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                
                }
                }
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            })
                .onAppear {
                    movieObject.getMovies()
            
        }
                Spacer()
                
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

}
