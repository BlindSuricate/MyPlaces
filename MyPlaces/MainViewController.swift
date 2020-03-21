//
//  MainViewController.swift
//  MyPlaces
//
//  Created by user on 2020-03-21.
//  Copyright © 2020 TarasenkoSerhii. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let kievPubs = ["Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Индокитай", "Классик", "Шок"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return kievPubs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = kievPubs[indexPath.row]
        cell.imageView?.image = UIImage(named: kievPubs[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true


        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
