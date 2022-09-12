//
//  NavigationUserModel.swift
//  swiftuilearn
//
//  Created by Ata emir on 12.09.2022.
//

import Foundation

struct NavigationUserModel: Identifiable {
    let id: UUID = UUID()
    let name: String
}
extension NavigationUserModel {
    
    /// Sample Nav User Model
    static let samples = [
        NavigationUserModel(name: "Ata Emir"),
        NavigationUserModel(name: "Levent"),
        NavigationUserModel(name: "Barış"),
        NavigationUserModel(name: "Ümit")
    ]
}
