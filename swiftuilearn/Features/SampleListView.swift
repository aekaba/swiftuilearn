//
//  SampleListView.swift
//  swiftuilearn
//
//  Created by Ata emir on 11.09.2022.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: Array<String> = ["Red","Yellow","Blue","Green"]
    var body: some View {
        
            List{
                Section(header: Text("Settings")
                    .font(.title2)
                    .foregroundColor(Color.black), content:  {
                    HStack{
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right.circle.fill")
                    }
                        HStack{
                            Image(systemName: "lock.fill")
                            Text("Security")
                            Spacer()
                            Image(systemName: "chevron.right.circle.fill")
                        }
                })
                HStack{
                    Image(systemName: "info.circle.fill")
                    Text("About")
                    Spacer()
                        
                    Image(systemName: "chevron.right.circle.fill")
                }
                Section{
                    ForEach(items,id: \.self){
                        (item) in
                        Text(item)
                    }
                }
            }.listStyle(InsetGroupedListStyle.init())
        
        
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
