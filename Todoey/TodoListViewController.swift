//
//  ViewController.swift
//  Todoey
//
//  Created by Nhuc Dang on 6/17/19.
//  Copyright © 2019 Nhuc Dang. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["apple","pears","peaches"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//MARK - Tableview Datasource
    //step 1 - add in # of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
//MARK - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        
  
    }
    
    
    
    
}

