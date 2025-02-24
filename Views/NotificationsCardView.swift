//
//  NotificationsCardView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-04.
//

import SwiftUI

var sampleNotificationdata : NotificationModel = .init(id: 0, type: NotificationType.marketplace, title: "Marilena", subTitle: "19.00", time: Date(timeInterval: 3600, since: Date()), image: "blankUser")

struct NotificationCardView: View {
    
    var data : NotificationModel
    @State var notificationImage : String = "storefront"
    @State var message : String = "Default Message"
    @State var differenceTime : String = "1h"
    @State var smallIconColor : Color = .blue
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            ZStack(alignment: .trailing) {
                Image(data.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70, alignment: .center)
                    .padding()
                
                Image(systemName: notificationImage)
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .background(smallIconColor)
                    .clipShape(Circle())
                    .font(.system(size: 15))
                    .offset(x: -10, y: 17)
                    
                    
            }
            VStack (alignment: .leading){
                Text(.init(message))
                    .font(.subheadline)
                Text(differenceTime)
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            HStack{
                Image(systemName: "ellipsis")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
            }
            
        }
            .padding(.horizontal)
            .onAppear() {
                switch data.type {
                case .marketplace:
                    self.notificationImage = "storefront"
                    self.message = "**\(data.title)** recently listed for **CA$\(data.subTitle).**"
                    self.smallIconColor = Color.cyan
                case .newsLetter:
                    self.notificationImage = "rectangle.3.group.bubble.fill"
                    self.message = "Recomended for you: \(data.title)"
                case .friends:
                    self.notificationImage = "person.3.fill"
                    self.message = "**\(data.title):** \"\(data.subTitle)\""
                case .findPeople:
                    self.notificationImage = "person.fill.questionmark"
                    self.message = "You have new friend suggestions: **\(data.title)** and \(data.subTitle)."
                }
                
                let time = Date()
                let difference = data.time.timeIntervalSince(time)
                if difference < 60 {
                    differenceTime = String(format: "%.0f", difference) + "s"
                }
                else if difference >= 60 && difference < 3600 {
                    differenceTime = String(format: "%.0f", difference / 60) + "m"
                }
                else if difference >= 3600 && difference < 86400 {
                    differenceTime = String(format: "%.0f", difference / 3600) + "h"
                }
                
            }
    }
        
    
}

#Preview {
    NotificationCardView(data: sampleNotificationdata)
}
