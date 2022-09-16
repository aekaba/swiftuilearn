//
//  RandomFoxView.swift
//  swiftuilearn
//
//  Created by Ata emir on 14.09.2022.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView

struct RandomFoxView: View {
    private let title: String = "My Fox"
    
    @StateObject private var foxViewModel: FoxViewModel = FoxViewModel(service: FoxService())
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title)
                Spacer()
                Button("Refresh"){
                    foxViewModel.refreshView()
                }
            }.padding(10)
            Spacer()
            
            if foxViewModel.isComplete ?? false{
                KFImage(URL(string:foxViewModel.fox?.image ?? "")).resizable().frame( height: 400, alignment: .center).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            } else {
                ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
            }
            Spacer()
        }
        
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}
