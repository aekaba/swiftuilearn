//
//  UserService.swift
//  swiftuilearn
//
//  Created by Ata emir on 16.09.2022.
//

import Foundation
import Alamofire

protocol IUserService {
    
    func fetchUsers() async -> User?
}

//https://reqres.in/api/users

struct UserService : IUserService {
    func fetchUsers() async -> User? {
        let request = AF.request(ServicePath.users.toService()).serializingDecodable(User.self)
        let response = await request.response
        response.error?.showError()
        return response.value
    }
}

private enum ServicePath:String {
    case users = "users"
    
    func toService() -> String {
        return "https://reqres.in/api/\(rawValue)"
    }
    
}
