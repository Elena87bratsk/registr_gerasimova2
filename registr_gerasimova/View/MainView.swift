//
//  MainView.swift
//  registr_gerasimova
//
//  Created by user on 05.06.2021.
//

import SwiftUI

struct MainView: View {
    @State var select = 1
    @Binding var page: Int
    var body: some View {
        TabView(selection: $select){
                    HomeView()
                        .tabItem { Image(systemName: "house")
                            Text ("Home")
                        }.tag(1)
                    Text("Tab 2")
                        .tabItem { Image(systemName: "magnifyingglass")
                            Text ("Explore")
                        }.tag(2)
                    Text("Tab 3")
                        .tabItem { Image(systemName: "plus.app")
                            Text ("Upload")
                        }.tag(3)
                }
            }
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(page: .constant(1))
    }
}
