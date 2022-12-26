//
//  CustomTabView.swift
//  swiftuilearn
//
//  Created by Ata emir on 13.09.2022.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedIndex = CustomTabs.heart
    var body: some View {
        VStack {
            Button("Reset") {
                selectedIndex = CustomTabs.heart
            }
            TabView(selection: $selectedIndex) {
                HeartView().tabItem{
                    Image(systemName: "heart")
                    if selectedIndex == CustomTabs.heart {
                        Text("Heart")
                    }
                }.tag(CustomTabs.heart)
                MoonView().tabItem{
                    Image(systemName: "moon")
                    if selectedIndex == CustomTabs.moon {
                        Text("Moon")
                    }
                }.tag(CustomTabs.moon)
            }.accentColor(.orange)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct HeartView: View {
    var body: some View {
        Text("Tab Content 1")
    }
}

struct MoonView: View {
    var body: some View {
        Text("Tab Content 2")
    }
}
