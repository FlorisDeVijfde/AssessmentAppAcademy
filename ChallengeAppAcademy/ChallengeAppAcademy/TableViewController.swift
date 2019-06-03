//
//  ViewController.swift
//  ChallengeAppAcademy
//
//  Created by Floris de Vries on 01/06/2019.
//  Copyright © 2019 Floris de Vries. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var currentRow = 0
    let catNames = ["Brommetje", "Splash"]
    let cats = ["Cat1", "Cat2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RootCellId", for: indexPath)
        currentRow = indexPath.row
        setText(for: cell, with: cats[currentRow])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let dest = segue.destination as? DetailViewController {
                dest.catDetail = catNames[currentRow]
                dest.catImageName = cats[currentRow]
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentRow = indexPath.row
        if tableView.cellForRow(at: indexPath) != nil {
            performSegue(withIdentifier: "ShowDetail", sender: self)
        }
    }
    
    func setText(for cell: UITableViewCell, with item: String) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item
        }
    }

}

