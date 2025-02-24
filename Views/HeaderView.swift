//
//  HeaderView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            HStack (alignment: .center, spacing: 20){
                Image("facebookWordmark")
                    .resizable()
                    .frame(width: 150, height: 30)
                Spacer()
                Image(systemName: "plus")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Image(systemName: "message.fill")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
            }
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            HStack {
                Image("blankUser")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .padding(.trailing)
                
                Text("What's on your mind?")
                Spacer()
                Image(systemName: "photo")
                    .foregroundColor(.gray)
                    
            }
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 5)
                .ignoresSafeArea(.all)
        }
        .padding(.init(top: 20, leading: 0, bottom: 0, trailing: 0))
    }
}

#Preview {
    HeaderView()
}

