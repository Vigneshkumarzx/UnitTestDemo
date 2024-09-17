//
//  TodoViewModel.swift
//  UnitTestDemo
//
//  Created by vignesh kumar c on 17/09/24.
//

import Foundation
import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var tasks: [TodoTask] = [
        TodoTask(name: "Grocery shopping"),
        TodoTask(name: "Take pet on a walk"),
        TodoTask(name: "Work on SwiftUI app"),
    ]

    func addTask(name: String) {
        guard !name.isEmpty else { return }
        let newTodoTask = TodoTask(name: name)
        tasks.append(newTodoTask)
    }
}

