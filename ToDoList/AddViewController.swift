//
//  AddViewController.swift
//  ToDoList
//
//  Created by Betalantz on 9/17/17.
//  Copyright © 2017 Betalantz. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate: class {
    func savePressed(sender: AddViewController)
}

class AddViewController: UIViewController {
    @IBOutlet weak var addTaskField: UITextField!
    @IBOutlet weak var addDescField: UITextField!
    @IBOutlet weak var addDateField: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    var taskToEdit: ToDoItem?
    var delegate: AddViewControllerDelegate?
   
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        delegate?.savePressed(sender: self)
        performSegue(withIdentifier: "unwindWithSegueToToDoVC", sender: self)
    }
    override func viewDidLoad() {
        if let _ = taskToEdit {
            addTaskField.text = taskToEdit!.task!
            addDescField.text = taskToEdit!.desc!
            addDateField.setDate(taskToEdit!.date!, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
