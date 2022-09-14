//
//  Enviroment.swift
//  swiftuilearn
//
//  Created by Ata emir on 14.09.2022.
//

import SwiftUI

struct Enviroment: View {
    @Environment(\.verticalSizeClass) var verticalSize
    @StateObject var userController = UserController()
    var body: some View {
        VStack {
            Text(userController.currentDate.description)
            HStack {
                verticalSize == .regular ? Spacer(minLength: 40) : Spacer(minLength: 20)
                DatePicker(selection: $userController.currentDate, label: {Text("Date")})
                verticalSize == .regular ? Spacer(minLength: 40) : Spacer(minLength: 20)
            }
        }.environmentObject(userController)
    }
}

class UserController: ObservableObject {
    @Published var currentDate: Date = Date()
}

struct Enviroment_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Enviroment()
                .previewInterfaceOrientation(.portrait)
            Enviroment()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
