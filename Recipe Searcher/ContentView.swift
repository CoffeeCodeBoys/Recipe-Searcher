//
//  ContentView.swift
//  Recipe Searcher
//
//  Created by Patrick Morkert on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var results = [Hit]()
    
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
            
            List(results, id: \.recipe.label) {item in
                VStack(alignment: .leading) {
                    Text(item.recipe.label)
                    Text("Hi!")
                }
            }.onAppear(perform: loadData)
        }
    }
    
    func loadData() {
        guard let url = URL(string: "https://api.edamam.com/search?q=chicken&app_id=114cbe69&app_key=93c42eb233a8e16e4c0c1c6a67cc8d22") else {
            print("Your API end point is Invalid")
            return
        }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {

                if let response = try? JSONDecoder().decode([Hit].self, from: data) {
                    DispatchQueue.main.async {
                        print(response)
                        self.results = response
                    }
                    return
                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
