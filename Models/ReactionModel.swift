//
//  ReactionModel.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

struct ReactionModel {
    let username: UserModel
    let userReaction : Reaction
}

enum Reaction {
    case like
    case heart
}
