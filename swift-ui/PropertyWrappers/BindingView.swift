//
//  BindingView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 13/04/22.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Button("Add 2") {
                value += 2
            }
            Button("Update data") {
                user.name = "Dani Gutierrez"
                user.age = 15
            }
            NavigationLink(destination: EnvironmentView(), tag: 1, selection: $selection) {
                Button("Go to Environment View") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
