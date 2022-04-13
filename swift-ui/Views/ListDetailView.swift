//
//  ListDetailView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 12/04/22.
//

import SwiftUI

struct ListDetailView: View {
    
    @Binding var isFavorite: Bool
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar.resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            HStack {
                Text(programmer.name).font(.largeTitle)
                Button {
                    isFavorite.toggle()
                } label: {
                    if isFavorite {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star").foregroundColor(.black)
                    }
                    
                }
            }
            
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(isFavorite: .constant(false), programmer: Programmer(id: 1, name: "Daniel", languages: "JS y Swift", avatar: Image(systemName: "person.crop.square.fill"), isFavorite: true))
    }
}
