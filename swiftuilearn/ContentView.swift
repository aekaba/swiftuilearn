//
//  ContentView.swift
//  swiftuilearn
//
//  Created by Ata emir on 31.08.2022.
//

import SwiftUI

struct IconFieldView: View {
    
    @State var textFieldValue: String = ""
    
    var body: some View{
        VStack {
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $textFieldValue)
            Text(textFieldValue).font(.largeTitle)
            Image(systemName: textFieldValue.lowercased()).frame(width: 150, height: 150, alignment: Alignment.leading)
        }
    }
}

struct ContentView: View {
    var body: some View {
        Color.red
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IconFieldView()
            .previewInterfaceOrientation(.portrait)
    }
}
