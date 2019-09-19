//
//  Contacts_selected.swift
//  Zalo-Test
//
//  Created by Apple on 9/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class Contacts_selected: UIViewController,UITableViewDataSource {
    
    

    let NameHeader = [" ","Close friends","Recent updates","All contacts"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0:
            return " "
        case 1:
            return "Close friends"
        case 2:
            return "Recent updates"
        default:
            return "All contacts"
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return NameHeader.count
    }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    switch section {
    case 0:
        return 1
    case 1:
        return 1
    default:
        return 10
    }
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifirer = indexPath.section == 0 ? "Cell1" : indexPath.section == 1 ? "Cell2" : "Cell3"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifirer, for: indexPath)
        
       
        
        return cell    }
    

}
