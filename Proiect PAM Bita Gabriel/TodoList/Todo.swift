//
//  Todo.swift
//  TodoList
//
//  Created by Gabriel Bita on 11.05.2023.
//  Copyright © 2023 Gabriel Bita. All rights reserved.
//

import Foundation

struct Todo {
  let title: String
  let isComplete: Bool
  
  init(title: String, isComplete: Bool = false) {
    self.title = title
    self.isComplete = isComplete
  }
  
  func completeToggled() -> Todo {
    return Todo(title: title, isComplete: !isComplete)
  }
}
