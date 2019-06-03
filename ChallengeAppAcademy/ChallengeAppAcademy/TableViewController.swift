//
//  ViewController.swift
//  ChallengeAppAcademy
//
//  Created by Floris de Vries on 01/06/2019.
//  Copyright © 2019 Floris de Vries. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellReusableId", for: indexPath)
        let cats = ["cat1", "cat2"]
        setText(for: cell, with: cats[indexPath.row])
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let cell = tableView.cellForRow(at: indexPath) {
////            let item = todoList.todos[indexPath.row]
////            configureCheckmark(for: cell, with: item)
////            tableView.deselectRow(at: indexPath, animated: true)
//        }
//    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        //todoList.todos.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    func setText(for cell: UITableViewCell, with item: String) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item
        }
    }

}

