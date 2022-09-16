//
//  Logging+AFError.swift
//  swiftuilearn
//
//  Created by Ata emir on 16.09.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "")
    func showError() {
        AFError.logger.error("\(errorDescription?.description)")
    }
}
