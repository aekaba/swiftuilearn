//
//  FoxViewModal.swift
//  swiftuilearn
//
//  Created by Ata emir on 14.09.2022.
//

import Foundation

class FoxViewModel: ObservableObject {
    
    init(service: IFoxService){
        self.service = service
        fetchFox()
    }
    
    @Published var fox: FoxModel?
    @Published var isComplete: Bool?
    private let service: IFoxService
    
    private func fetchFox() {
        service.fetchItem(path: .floof) { (data,isComplete) in
            self.isComplete = isComplete
            self.fox = data
        }
    }
    func refreshView( ){
        isComplete = false
        fetchFox()
    }
}
