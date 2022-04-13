//
//  StateView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 13/04/22.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name = "Daniel G"
    @Published var age = 21
}


struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Current value: \(value)")
                Button("Add 1") {
                    value += 1
                }
                Text("Mi name is \(user.name) and my age \(user.age)")
                Button("Update data") {
                    user.name = "Brais Moure"
                    user.age = 35
                }
                NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
                    Button("Go to Binding View") {
                        selection = 1
                    }
                }
            }
            .navigationTitle("State View")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
