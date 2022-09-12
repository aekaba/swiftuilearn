//
//  ModelListView.swift
//  swiftuilearn
//
//  Created by Ata emir on 12.09.2022.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            List(TweetModel.tweets) { data in
                TweetCards(tweet: data)
            }.listStyle(.sidebar)
        }
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}
