//
//  VideoPostModel.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import Foundation

struct VideoPostModel : Identifiable{
    let id: Int
    let title: String
    let image: String
    let reactions: Int
    let username: String
    let date : Date
    let userImage: String
    let comments: Int
    let shares: String
    let views: String

}
