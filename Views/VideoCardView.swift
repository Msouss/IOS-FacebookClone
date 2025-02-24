//
//  VideoCardView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

var sampleVideoModelData : VideoPostModel =
    .init(id: 0, title: "Blind Date 6 Girls!!", image: "IMG_4841", reactions: 50000, username: "Demi Katsilogiannis", date: Date(), userImage: "IMG_4842", comments: 1500, shares: "10.7k", views: "100k")


struct VideoCardView: View {
    let video : VideoPostModel
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Image(video.userImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .padding(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                
                VStack(alignment: .leading){
                    Text(video.username)
                        .font(.caption)
                    Text(video.date, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .padding(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                Image(systemName: "xmark")
                    .padding(.trailing)
            }
            
            Text(video.title)
                .padding(.init(top: 5, leading: 5, bottom: 0, trailing: 5))
            
            Image(video.image)
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
                Text("\(video.reactions)")
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(video.comments) comments")
                    .padding(0)
                    .foregroundColor(.secondary)
                    .font(.caption)
                Text("\(video.shares) shares")
                    .padding(0)
                    .foregroundColor(.secondary)
                    .font(.caption)
                Text("\(video.views) views")
                    .padding(.trailing)
                    .foregroundColor(.secondary)
                    .font(.caption)
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
    VideoCardView(video: sampleVideoModelData)
}
