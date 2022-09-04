//
//  ContentView.swift
//  swiftuilearn
//
//  Created by Ata emir on 31.08.2022.
//

import SwiftUI

struct ContentView: View {
    fileprivate func VerticalView() -> some View {
        return VStack{
            Spacer()
            Text("1")
            Spacer()
            Text("2")
            Spacer()
        }
    }
    fileprivate func HorizontalView() -> some View {
        return HStack{
            Spacer()
            Text("1")
            Spacer()
            Text("2")
            Spacer()
        }
    }
    fileprivate func StackView() -> some View {
        return ZStack{
            Spacer()
            Color.pink
            Spacer()
            Text("2")
            Spacer()
        }
    }
    
    
    
    var body: some View {
        StackView()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
