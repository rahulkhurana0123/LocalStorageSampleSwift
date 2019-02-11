//
//  ViewController.swift
//  Todoey
//
//  Created by Rahul khurana on 06/02/19.
//  Copyright © 2019 Rahul khurana. All rights reserved.
//

import UIKit

class TodoListViewController : UITableViewController {

    let array = ["1st","2nd","3rd"]
    
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

