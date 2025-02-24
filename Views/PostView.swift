//
//  PostView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

var sampleUserData : UserModel = .init(id: 0, name: "Demi Katsilogiannis", email: "demi@gmail.com", avatar: "DemiKatsilogiannis", friends: 1000, mutualFriends: 26, posts: [], banner: "DemiKatsilogiannis")
var samplePostData : PostModel =
    .init(id: 0, title: "Good Morning from Greece!", image: "DemiKatsilogiannis", reactions: 15, username: "Demi Katsilogiannis", date: Date(), userImage: "DemiKatsilogiannis", comments: 10)

struct PostView: View {
    
    var data : PostModel
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Image(samplePostData.userImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .padding(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                
                VStack(alignment: .leading){
                    Text(samplePostData.username)
                        .font(.caption)
                    Text(samplePostData.date, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .padding(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                Image(systemName: "xmark")
                    .padding(.trailing)
            }
            
            Text(samplePostData.title)
                .padding(.init(top: 5, leading: 5, bottom: 0, trailing: 5))
            
            Image(samplePostData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .top))
            HStack {
                ZStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(Color.pink)
                        .clipShape(Circle())
                        .offset(x:20)
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(Color.blue)
                        .clipShape(Circle())
                    
                }
                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 20))
                Text("\(samplePostData.reactions)")
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(samplePostData.comments) comments")
                    .padding(.trailing)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom)
            HStack {
                Spacer()
                Image(systemName: "hand.thumbsup")
                    .foregroundColor(.gray)

                    .frame(width: 20, height: 20)
                Text("like")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "message")
                    .foregroundColor(.gray)
                    .frame(width: 20, height: 20)
                Text("Comment")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "link")
                    .foregroundColor(.gray)
                    .frame(width: 20, height: 20)
                Text("Copy")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "arrowshape.turn.up.forward")
                    .foregroundColor(.gray)
                    .frame(width: 20, height: 20)
                Text("Share")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Spacer()
            }
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(height: 10)
                .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    PostView(data: samplePostData)
}
