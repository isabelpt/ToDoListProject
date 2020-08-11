//
//  AddToDoViewController.swift
//  ToDoListProject
//
//  Created by Isabel Prado-Tucker on 8/10/20.
//  Copyright © 2020 Isabel Prado-Tucker. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousToDoTVC = ToDoTableViewController()
    @IBOutlet weak var descriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let newToDo = ToDoClass()
        
        if let checkForInput = descriptionInput.text {
             newToDo.description = checkForInput
             newToDo.information = switchInput.isOn
        }
        
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: - Navigation

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let nextAddToDoVC = segue.destination as? AddToDoViewController {
             nextAddToDoVC.previousToDoTVC = self
        }

    }
    */

}
