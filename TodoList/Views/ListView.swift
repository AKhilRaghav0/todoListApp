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
        ZStack{
            if listViewModel.items.isEmpty{
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List{
                ForEach(listViewModel.items) { items in
                    ListRowView(item: items)
                        .onTapGesture {
                            withAnimation(.linear) {
                                listViewModel.updateItem(item:  items)
                            }
                        }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
            }
        }
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

