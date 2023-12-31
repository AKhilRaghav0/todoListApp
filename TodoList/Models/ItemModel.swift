//
//  ItemModel.swift
//  TodoList
//
//  Created by Akhil on 15/10/23.
//

import Foundation
//immutable struct

 
struct ItemModel: Identifiable, Codable  {
    let id: String
    let title: String
    let isCompleted: Bool
    
    
    init(id: String = UUID().uuidString,title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel{
        ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
