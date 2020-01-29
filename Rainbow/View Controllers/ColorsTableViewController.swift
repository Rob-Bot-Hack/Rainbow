//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Robert on 1/28/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [
        MyColor(name: "Red", color: .red),
        MyColor(name: "Orange", color: .orange),
        MyColor(name: "Yellow", color: .yellow),
        MyColor(name: "Green", color: .green),
        MyColor(name: "Blue", color: .blue),
       MyColor(name: "Indigo", color: .cyan)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }

    // Index Path (x = section, y= row)
    //First row of a tableview (0,0) then 0,1 - 0,2
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color
        return cell
    }
    

   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1st make you are using the correct segue
        if segue.identifier == "ToDetailViewController" {
            //2nd Get the instance of your detail view from the segu's destination
            //3rd Get the index path for the row the user tapped
            if let detailVC = segue.destination as? ColorDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow {
            //4th Initialize color with indexPath
            let color = colors[indexPath.row]
            //5th Pass the color to the detail view
            detailVC.cellColor = color
            
            }
        
        }
    
    }
}
