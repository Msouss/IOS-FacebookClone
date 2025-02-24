//
//  TabView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            VideoView()
                .tabItem {
                    Image(systemName: "play.display")
                    Text("Video")
            }
            
            MarketplaceView()
                .tabItem {
                    Image(systemName: "storefront")
                    Text("Marketplace")
                }
            NotificationScreen()
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            
            MenuView()
                .tabItem {
                    Image(systemName: "lines.measurement.vertical")
                    Text("Menu")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}

