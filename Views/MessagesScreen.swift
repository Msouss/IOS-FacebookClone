//
//  MessagesScreen.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-04.
//

import SwiftUI

var messages: [MessageModel] = [
    .init(id: 0, name: "Olympia Trihas", message: "I will let go for 2000$", time: "12:34", profileImage: "IMG_4818 3"),
    .init(id: 1, name: "Stefano Borrelli", message: "Are you still interested?", time: "3:12", profileImage: "IMG_4900"),
    .init(id: 3, name: "Melina", message: "Can you meet tommorow?", time: "2:34", profileImage: "IMG_4821 2"),
    .init(id: 4, name: "Clara", message: "Sorry not interested", time: "10:04", profileImage: "IMG_4817 2"),
    .init(id: 5, name: "Markos", message: "See you tommorow", time: "3:20", profileImage: "IMG_4902"),
    .init(id: 6, name: "Picco Trihas", message: "Does 400 sound good?", time: "1:15", profileImage: "FullSizeRender"),
    .init(id: 7, name: "Batman", message:"Alfred wont allow me to do this", time: "8:00", profileImage: "IMG_4901"),
    .init(id: 8, name: "Kayla", message: "Which case would you like", time: "7:10", profileImage: "IMG_4899"),
    .init(id: 9, name: "Sofia", message: " do you wanna know how i got these scars", time: "9:55", profileImage: "IMG_4820 2"),
]

struct MessagesScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button("Chats", systemImage: "chevron.left",
                           action: {
                        self.presentationMode.wrappedValue.dismiss()
                    })
                    .font(.title.bold())
                    .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                    
                }.padding(.horizontal)
                ScrollView {
                    VStack {
                        ForEach(messages, id: \.id) { message in
                            NavigationLink(destination: Text(message.name), label: {
                            MessageCardView(messageModel: message)
                            })
                            .foregroundColor(.black)
                        }
                    }
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MessagesScreen()
}
