//
//  SwiftUIView2.swift
//  
//
//  Created by user on 05.06.2021.
//

import SwiftUI

struct RootView: View {
    @State var page = 2
    var body: some View {
        if page == 1{
            SignInView(page: $page)
        } else if page == 2 {
            MainView(page: $page)
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
