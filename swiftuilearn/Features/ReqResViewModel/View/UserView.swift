//
//  UserView.swift
//  swiftuilearn
//
//  Created by Ata emir on 16.09.2022.
//

import SwiftUI
import ActivityIndicatorView
import Kingfisher

struct UserView: View {
    @StateObject var userViewModel = UserViewModel(userService: UserService())
    
    var body: some View {
        VStack {
            if userViewModel.user == nil {
                LoadingView()
            } else {
                List(userViewModel.user?.data ?? []){
                    UserExtractedView(model: $0)
                      
                }
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct LoadingView: View {
    var body: some View{
        ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle).frame(width: 59, height: 50, alignment: .center)
    }
}

struct UserExtractedView: View {
    let model: Datum
    var body: some View {
        HStack {
            KFImage(URL(string: model.avatar)).resizable().frame(width: 50, height: 50, alignment: .leading)
            
                Text(model.firstName)
                Text(model.lastName)
            
            
        }
    }
}
