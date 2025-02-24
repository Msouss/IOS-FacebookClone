//
//  NotificationModel.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-04.
//

import Foundation

struct NotificationModel {
    var id: Int
    var type: NotificationType
    var title: String
    var subTitle: String
    var time: Date
    var image: String
}

enum NotificationType {
    case marketplace
    case findPeople
    case friends
    case newsLetter
}
