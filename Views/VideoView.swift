//
//  VideoView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

let sampleVideos : [VideoPostModel] = [sampleVideoModelData]

struct VideoView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                HStack {
                    Text("Video ")
                        .font(.title.bold())
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "person.fill")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                    
                }.padding(.horizontal)
                
                HStack (spacing: 20){
                    Text("For you")
                        .padding(4)
                        .background(Color.blue.opacity(0.1))
                        .foregroundColor(.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(style: StrokeStyle(lineWidth: 1))
                                .foregroundColor(.blue)
                        )
                    Text("Live")
                    Text("Reels")
                    Spacer()
                }
                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 5)
                
            }
            ForEach(sampleVideos, id: \.id) { video in
                VStack {
                    VideoCardView(video: video)
                }
                .padding(.bottom)
                
            }
        }
    }
}

#Preview {
    VideoView()
}
