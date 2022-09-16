//
//  UserViewModel.swift
//  swiftuilearn
//
//  Created by Ata emir on 16.09.2022.
//

import Foundation

class UserViewModel: ObservableObject {
    
    init(userService: IUserService) {
        self.userService = userService
        Task.detached{
           await self.fetchWholeItems()
        }
    }
    
    let userService : IUserService
    @Published var user: User?
    
    func fetchWholeItems() async {
        user = await userService.fetchUsers()
    }
    
}
