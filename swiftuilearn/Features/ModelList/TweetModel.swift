//
//  TweetModel.swift
//  swiftuilearn
//
//  Created by Ata emir on 12.09.2022.
//

import Foundation

struct TweetModel: Identifiable {
    let id: UUID = UUID()
    let userName: String
    var body: String
    var likeCount: Int?
}

extension TweetModel {
    /// Sample Tweet
    static let tweets = [
    TweetModel(userName: "Ata Emir Kaba", body: "Bu Gerçekmi ya",likeCount: 15),
    TweetModel(userName: "Baris Süer", body: "Yaw cedi çöp", likeCount: 5),
    TweetModel(userName: "Manneling", body: "AHAHAHADFAFDSAHAHA")
    ]
    
    static let fakeTweet = TweetModel(userName: "Ata Emir Kaba", body: "Bu Gerçekmi ya",likeCount: 15)
}
