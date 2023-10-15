//
//  ListRowView.swift
//  TodoList
//
//  Created by Akhil on 15/10/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
     
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title )
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
 

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "Temp", isCompleted: true)
    static var item2 = ItemModel(title: "Temp2", isCompleted: false)
    static var previews: some View {
//        ListRowView(title: "This is the First title")
        
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2) 
        }
        .previewLayout(.sizeThatFits)
    }
}
