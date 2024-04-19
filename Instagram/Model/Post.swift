//
//  Post.swift
//  Instagram
//
//  Created by Chris on 2024/4/17.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is the post content", likes: 12, imageUrl: "profile", timestamp: Date(), user: User.MOCK_USER[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is the post content", likes: 12, imageUrl: "profile", timestamp: Date(), user: User.MOCK_USER[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is the post content", likes: 12, imageUrl: "profile", timestamp: Date(), user: User.MOCK_USER[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is the post content", likes: 12, imageUrl: "profile", timestamp: Date(), user: User.MOCK_USER[3]),

    ]
}

