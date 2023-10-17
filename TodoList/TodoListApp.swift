//
//  TodoListApp.swift
//  TodoList
//
//  Created by Akhil on 15/10/23.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
            
        }
    }
}
