//
//  CircleTextImageView.swift
//  swiftuilearn
//
//  Created by Ata emir on 10.09.2022.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title: String
    let imageUrl: String
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!).fade(duration: 0.25).opacity(0.75).shadow(radius: 80)
            Text(title).bold()
        }
    }
}

struct CircleTextImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImageView(title: "Hello", imageUrl: "https://picsum.photos/220").previewLayout(.sizeThatFits)
    }
}
