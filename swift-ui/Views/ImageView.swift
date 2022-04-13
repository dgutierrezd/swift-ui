//
//  ImageView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 12/04/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("swift-icon").resizable()
                .padding()
                .frame(width: 100, height: 100, alignment: .top)
                .background(Color.gray)
                .clipShape(Circle())
                .shadow(radius: 10)
            Image(systemName: "rectangle.inset.filled.and.person.filled")
                .resizable()
                .frame(width: 80, height: 50)
                .foregroundColor(Color.blue)
                .padding()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
