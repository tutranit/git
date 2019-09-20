//
//  Contacts_selected.swift
//  Zalo-Test
//
//  Created by Apple on 9/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class Contacts_selected: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    

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
        return 2
    case 1:
        return 1
    default:
        return 10
    }
    
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        //view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        if(section == 3)
        {
            let title = UILabel()
            title.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            title.text = "Quickly add your friends to Zalo from your contact book"
            title.frame = CGRect(x: 40, y: 0, width: 300, height: 100)
            title.numberOfLines = 2
            title.textAlignment = .center
            view.addSubview(title)
            let BtnUP = UIButton()
            BtnUP.backgroundColor = UIColor.white
            BtnUP.setTitle("UPDATE PHONEBOOK", for: .normal)
            BtnUP.setTitleColor(UIColor.black, for: .normal)
            BtnUP.layer.cornerRadius = 5
            BtnUP.frame = CGRect(x: 90, y: 70, width: 200, height: 50)
            view.addSubview(BtnUP)
        }
        return view
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifirer = indexPath.section == 0 ? "Cell1" : indexPath.section == 1 ? "Cell2" : "Cell3"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifirer, for: indexPath)
        
       
        
        return cell    }
    

}
