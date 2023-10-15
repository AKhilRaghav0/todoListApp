//
//  ItemModel.swift
//  TodoList
//
//  Created by Akhil on 15/10/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
