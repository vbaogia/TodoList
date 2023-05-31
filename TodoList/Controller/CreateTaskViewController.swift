//
//  CreateTaskViewController.swift
//  TodoList
//
//  Created by GiaBao on 28/03/2023.
//

import UIKit

class CreateTaskViewController: UIViewController {
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    let taskService = TaskService()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didTapSubmit(_ sender: UIButton) {
        if (taskNameTextField.text!.isEmpty || descriptionTextField.text!.isEmpty){
            print("All is empty")
        } else {
            let task = TaskModel(taskName: taskNameTextField.text!, taskDescription: descriptionTextField.text!)
            do {
                try taskService.saveTask(task: task)
                navigationController?.popViewController(animated: true)
            } catch let error {
                print(error)
            }
        }
    }
}
