//
//  ListView.swift
//  swift-ui
//
//  Created by Daniel Gutierrez on 12/04/22.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    
    @Published var programmers = [Programmer(id: 0, name: "Daniel", languages: "JS y Swift", avatar:                               Image(systemName: "person.crop.square.fill"), isFavorite: true),
                                  Programmer(id: 1, name: "Brais", languages: "JS y Swift", avatar: Image(systemName: "person.crop.square.fill"), isFavorite: false),
                                  Programmer(id: 2, name: "John", languages: "JS y Swift", avatar: Image(systemName: "person.crop.square.fill"), isFavorite: false),
                                  Programmer(id: 3, name: "Bro", languages: "JS y Swift", avatar: Image(systemName: "person.crop.square.fill"), isFavorite: true)]
    
}


struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.isFavorite
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar favoritos")
                }.padding()
                List(filteredProgrammers, id: \.id) {
                    programmer in
                    NavigationLink(destination: ListDetailView(isFavorite: $programmersModelData.programmers[programmer.id].isFavorite, programmer: programmer)) {
                        RowView(programmer: programmer)
                    }
                }
            }
            
            .navigationTitle("Programmers")
        }
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
