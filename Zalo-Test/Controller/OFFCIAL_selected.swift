//
//  OFFCIAL_selected.swift
//  Zalo-Test
//
//  Created by Apple on 9/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class OFFCIAL_selected: UIViewController,UITableViewDataSource {
    
    let name = ["Báo mới","Comic","Game Center","Thời tiết","Tiến lên Miền Nam","ZaloPay"]
    let ArrayImage = ["Con cá","Con tôm","Con cua","Hình bầu","Nai","Con gà","Trò chơi bầu cua"]
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Followed more Official Accounts"
        }
        return " "
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1{
            return name.count
        }
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier = indexPath.section == 0 ? "Cell1" : "Cell2"
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath)
        
        if indexPath.section == 1{
            cell.textLabel?.text = name[indexPath.row]
            cell.imageView?.image = UIImage(named: ArrayImage[indexPath.row])
            cell.imageView?.layer.cornerRadius = 5
        }
        
        return cell
    }
  

}
