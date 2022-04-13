//
//  RowView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 12/04/22.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar.resizable().frame(width: 40, height: 40, alignment: .leading)
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.headline)
                Text(programmer.languages)
                    .font(.caption)
            }
            Spacer()
            if programmer.isFavorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Daniel", languages: "JS y Swift", avatar: Image(systemName: "person.crop.square.fill"), isFavorite: true))
    }
}
