//
//  ContentView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Hello, world!")
                .padding()
                .font(.title)
                .background(Color.orange)
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange)
                    .padding()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(80)
            }
            
            HStack {
                Text("Welcome")
                    .padding()
                Spacer()
                Text("dgutierrezd")
                    .padding()
                    .background(Color.orange)
            }
            
        }.background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
