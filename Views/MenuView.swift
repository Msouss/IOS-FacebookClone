//
//  MenuView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                
                HStack {
                    Text("Menu")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    HStack(spacing: 15) {
                        Image(systemName: "gearshape.fill")
                        Image(systemName: "magnifyingglass")
                    }
                    .font(.title2)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                HStack {
                    Image("blankUser")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    VStack(alignment: .leading) {
                        Text("Marilena Soussani")
                            .font(.headline)
                        Text("See your profile")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                    }
                    Spacer()
                }
                
                .padding(.horizontal)
                .padding(.top, 10)
                
               
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    MenuItem(icon: "clock.fill", color: .blue, label: "Memories")
                    MenuItem(icon: "bookmark.fill", color: .purple, label: "Saved")
                    MenuItem(icon: "person.3.fill", color: .blue, label: "Groups")
                    MenuItem(icon: "play.rectangle.fill", color: .blue, label: "Video")
                    MenuItem(icon: "bag.fill", color: .blue, label: "Marketplace")
                    MenuItem(icon: "person.2.fill", color: .blue, label: "Friends")
                    MenuItem(icon: "newspaper.fill", color: .blue, label: "Feeds")
                    MenuItem(icon: "heart.fill", color: .red, label: "Dating")
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                Button(action: {}) {
                    Text("See more")
                        .foregroundColor(.blue)
                        .font(.headline)
                }
                .padding(.vertical, 10)
                
                Divider()
                
                VStack {
                    ExpandableRow(icon: "questionmark.circle", label: "Help & Support")
                    ExpandableRow(icon: "gear", label: "Settings & Privacy")
                    ExpandableRow(icon: "square.grid.2x2.fill", label: "Also from Meta")
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct MenuItem: View {
    var icon: String
    var color: Color
    var label: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(color)
                .frame(width: 20, height: 30)
            Text(label)
                .font(.headline)
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
    }
}


struct ExpandableRow: View {
    var icon: String
    var label: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .frame(width: 30, height: 30)
            Text(label)
                .font(.headline)
            Spacer()
            Image(systemName: "chevron.down")
                .foregroundColor(.black)
        }
        .padding(.vertical, 8)
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
