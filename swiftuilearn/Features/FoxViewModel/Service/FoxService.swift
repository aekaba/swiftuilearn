//
//  FoxService.swift
//  swiftuilearn
//
//  Created by Ata emir on 14.09.2022.
//

import Foundation
import Alamofire
import SwiftUI

protocol IFoxService {
    func fetchItem(path: FoxPath, onSuccess: @escaping (FoxModel,Bool) -> Void)
}

class FoxService: IFoxService {

    
    private let baseUrl: String = "https://randomfox.ca/"
    
    func fetchItem(path: FoxPath, onSuccess: @escaping (FoxModel,Bool) -> Void) {
        AF.request(baseUrl+path.rawValue).responseDecodable(of:FoxModel.self, completionHandler: { response in
            guard let value = response.value else { return }
            onSuccess(value,true)
        })
    }
}

enum FoxPath: String{
case floof = "floof"
}
