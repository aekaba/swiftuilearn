//
//  Navigation+View.swift
//  swiftuilearn
//
//  Created by Ata emir on 17.09.2022.
//

import Foundation
import SwiftUI

extension View {
    
    
    func dismiss() {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        
        presentationMode.wrappedValue.dismiss()
    }
}
