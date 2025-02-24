//
//  LoginView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                Image("Facebook_Logo")
                    .resizable()
                    .frame(width: 70, height: 70)
                Spacer()
                
                VStack (spacing: 10){
                    TextField("Mobile number or email", text: $email)
                        .padding()
                        .background(Color.white)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1))
                        .foregroundStyle(.secondary)
                    TextField("Password", text: $password)
                        .padding()
                        .background(Color.white)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1))
                        .foregroundStyle(.secondary)

                    NavigationLink(destination: TabScreen()){
                        Text("Log in")
                            .padding()
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(100)
                    }
                    
                    Button (action: {}) {
                        Text("Forgot password?")
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                
                Button {
                
                } label : {
                    Text("Create new account")
                        .padding()
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 100,
                                style: .continuous
                            )
                            .stroke(.tint, lineWidth: 1)
                        )
                    
                }
                Image("Meta_Logo")
                    .resizable()
                    .frame(width: 120, height: 50)
                    .foregroundColor(.gray)
            }
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            .background(Color.gray.opacity(0.1))
        }
    }
}

#Preview {
    LoginView()
}
