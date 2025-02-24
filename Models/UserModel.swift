//
//  UserModel.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

struct UserModel: Identifiable {
    let id: Int
    let name: String
    let email: String
    let avatar: String
    let friends: Int
    let mutualFriends: Int
    let posts: [PostModel]
    let banner : String?
}
