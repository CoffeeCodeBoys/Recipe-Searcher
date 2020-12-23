//
//  ContentView.swift
//  Recipe Searcher
//
//  Created by Patrick Morkert on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Search Edamam for recipes")
                Spacer()
            }
            .padding(.leading, 10.0)
            TextField("Enter a food", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 10.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Search")
                    .padding(.top)
            }
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
