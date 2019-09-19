//
//  OFFCIAL_selected.swift
//  Zalo-Test
//
//  Created by Apple on 9/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class OFFCIAL_selected: UIViewController,UITableViewDataSource {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellContacts", for: indexPath)
        
        //cell.imageView?.image = UIImage(named: "search")
       // cell.textLabel?.text = self.name[indexPath.section][indexPath.row]
        
        return cell
    }
  

}
