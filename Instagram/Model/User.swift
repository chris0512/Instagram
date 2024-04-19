//
//  User.swift
//  Instagram
//
//  Created by Chris on 2024/4/17.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USER: [User] = [
        .init(id: NSUUID().uuidString, username: "username1", profileImageUrl: "profile", fullname: "fullname1", bio: "about me", email: "chris@gmail.com"),
        .init(id: NSUUID().uuidString, username: "username2", profileImageUrl: "profile", fullname: "fullname2", bio: "about me", email: "chris@gmail.com"),
        .init(id: NSUUID().uuidString, username: "username3", profileImageUrl: "profile", fullname: "fullname3", bio: "about me", email: "chris@gmail.com"),
        .init(id: NSUUID().uuidString, username: "username4", profileImageUrl: "profile", fullname: nil, bio: "about me", email: "chris@gmail.com"),
        .init(id: NSUUID().uuidString, username: "username5", profileImageUrl: "profile", fullname: "fullname5", bio: "about me", email: "chris@gmail.com")
    ]
}
