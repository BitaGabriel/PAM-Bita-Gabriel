//
//  TodoViewController.swift
//  TodoList
//
//  Created by Gabriel Bita on 11.05.2023.
//  Copyright © 2023 Gabriel Bita. All rights reserved.
//

import UIKit

protocol TodoViewControllerDelegate: AnyObject {
  func todoViewController(_ vc: TodoViewController, didSaveTodo todo: Todo)
}

class TodoViewController: UIViewController {
  
  @IBOutlet weak var textfield: UITextField!
  var todo: Todo?
  
  weak var delegate: TodoViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

    textfield.text = todo?.title
  }
    
  @IBAction func save(_ sender: Any) {
    let todo = Todo(title: textfield.text!)
    delegate?.todoViewController(self, didSaveTodo: todo)
  }
  
}
