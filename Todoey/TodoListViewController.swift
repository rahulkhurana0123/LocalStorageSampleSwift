//
//  ViewController.swift
//  Todoey
//
//  Created by Rahul khurana on 06/02/19.
//  Copyright © 2019 Rahul khurana. All rights reserved.
//

import UIKit

class TodoListViewController : UITableViewController {

    var array = ["1st","2nd","3rd"]
   
    
    // MARK: ADD NEW ITEM
    @IBAction func AddItemButton(_ sender: UIBarButtonItem) {
        
        
        var textField = UITextField()
        let alert = UIAlertController(title: "ADD NEW ITEM", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default){ (action) in
            
            
           self.array.append(textField.text!)
            self.tableView.reloadData()
        }
        alert.addAction(action)
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Add new Item"
       textField = alertTextField
        }
        present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell",for: indexPath)
   
    cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
 override   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(array[indexPath.row])
    tableView.deselectRow(at: indexPath, animated: true)
    
   if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
    tableView.cellForRow(at: indexPath)?.accessoryType = .none

    }
   else{
    tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

    }

    //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    
}

