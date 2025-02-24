//
//  NotificationsScreen.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-04.
//


import SwiftUI

var notifications: [NotificationModel] = [
    .init(id: 0, type: NotificationType.marketplace, title: "Yamaha R6", subTitle: "31,999", time: Date(timeIntervalSinceNow: 15), image: "blankUser"),
    .init(id: 1, type: NotificationType.friends, title: "Recommended For You", subTitle: "Hi my name is Melina!", time: Date(timeIntervalSinceNow: 10), image: "blankUser"),
    .init(id: 2, type: NotificationType.marketplace, title: "Chrome Hearts", subTitle: "600 Chrome Hearts Tripple Longsleeve Size S Dm for purchase", time: Date(timeIntervalSinceNow: 25), image: "blankUser"),
    .init(id: 3, type: NotificationType.friends, title: "Lucia Orfeo", subTitle: "Commented on Jennifer Dwyers post", time: Date(timeIntervalSinceNow: 35), image: "blankUser"),
    .init(id: 4, type: NotificationType.friends, title: "Markos", subTitle: "New Friend Suggestion", time: Date(timeIntervalSinceNow: 45), image: "blankUser"),
    .init(id: 5, type: NotificationType.marketplace, title: "Porche 911 Turbo S", subTitle: " 420,000.00", time: Date(timeIntervalSinceNow: 55), image: "blankUser"),
    .init(id: 6, type: NotificationType.friends, title: "Stefano Borrelli", subTitle: "Shared ZX-4R Post", time: Date(timeIntervalSinceNow: 57), image: "blankUser"),
    .init(id: 7, type: NotificationType.marketplace, title: "Olympia", subTitle: "", time: Date(timeIntervalSinceNow: 59), image: "blankUser"),
    .init(id: 8, type: NotificationType.marketplace, title: "Louis Vuitton", subTitle: "4000.00", time: Date(timeIntervalSinceNow: 59), image: "blankUser"),
    .init(id: 9, type: NotificationType.friends, title: "Recommened for you", subTitle: "Hey my name is Stefano!", time: Date(timeIntervalSinceNow: 59), image: "blankUser"),
    .init(id: 10, type: NotificationType.friends, title: "Olympia Trihas", subTitle: "Commented on your post", time: Date(timeIntervalSinceNow: 59), image: "blankUser"),
    
    
    
    
]

struct NotificationScreen: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 10)
                .ignoresSafeArea()
            
            HStack {
                Text("Notifications ")
                    .font(.title.bold())
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "gearshape.fill")
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
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
            ScrollView {
                VStack (spacing: 0){
                    ForEach(notifications, id: \.id) { data in
                NotificationCardView(data: data)
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1)
                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    NotificationScreen()
}
