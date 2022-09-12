//
//  TweetCards.swift
//  swiftuilearn
//
//  Created by Ata emir on 12.09.2022.
//

import SwiftUI

struct TweetCards: View {
    let tweet: TweetModel
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(tweet.userName).font(.title)
            Text("\(tweet.body)").font(.title3)
            HStack {
                Text("\(tweet.likeCount ?? 0)").fontWeight(.light)
                Image(systemName: "heart.circle.fill").foregroundColor(.pink)
                Spacer()
            }
            Spacer()
        }.padding(10).frame( height: 100, alignment: .top).overlay(RoundedRectangle(cornerRadius: 25).stroke(.red)).padding(5)
    }
}

struct TweetCards_Previews: PreviewProvider {
    static var previews: some View {
        TweetCards(tweet: .fakeTweet).previewLayout(.sizeThatFits)
    }
}
