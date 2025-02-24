//
//  MessageCardView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

let sampleMessageModel : MessageModel = .init(id: 1, name: "Demi Katsilogiannis", message: "Hey! how are you?", time: "Nov 13", profileImage: "DemiKatsilogiannis")

struct MessageCardView: View {
    let messageModel : MessageModel
    var body: some View {
        HStack {
            
            Image(messageModel.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(.black, lineWidth: 0.5))
                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(messageModel.name)
                    .font(.headline)
                HStack {
                    Text(messageModel.message)
                        .font(.caption)
                    Circle()
                        .frame(width: 3, height: 3)
                    Text(messageModel.time)
                        .font(.caption)
                }
                .foregroundColor(.gray)
            }
            Spacer()
            
        }
    }
}

#Preview {
    MessageCardView(messageModel: sampleMessageModel)
}
