//
//  ListView.swift
//  TodoList
//
//  Created by Akhil on 15/10/23.
//

import SwiftUI

struct ListView: View {
   
    
    @EnvironmentObject var listViewModel: ListViewModel
    var body: some View {
        List{
            ForEach(listViewModel.items) { items in
                ListRowView(item: items)
                    .onTapGesture {
                        withAnimation(.linear) {
                            
                        }
                    }
//                ListRowView(title: items )
                
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝 ")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add",
                                     destination: AddView())
            )
        
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}

