//
//  Contacts_selected.swift
//  Zalo-Test
//
//  Created by Apple on 9/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class Modal : UIImageView{
    
}

class Contacts_selected: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    

    let NameHeader = [" ","Close friends","Recent updates","All contacts"," "]
    
    let nameinsection2 = ["Cá","Tôm","Cua"]
    let nameinsection3 = ["Bầu","Nai","Gà","Bầu cua"]
    let ArrayImage2 = ["Con cá","Con tôm","Con cua"]
    
    let ArrayImage3 = ["Hình bầu","Nai","Con gà","Trò chơi bầu cua"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return NameHeader.count
    }
    
   
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        let Header = UILabel()
        Header.frame = CGRect(x: 0, y: 0, width: 250, height: 50)
        switch section {
        case 0:
            Header.text = "Recommend friends "
            view.addSubview(Header)
        case 1:
            Header.text = "Close friends "
            view.addSubview(Header)
        case 2:
            Header.text = "Recent updates "
            view.addSubview(Header)
        case 3:
            Header.text = "All contacts "
            view.addSubview(Header)
        default:
            Header.text = " "
            view.addSubview(Header)
        }
        if section == 2{
            let BtnSwitch = UISwitch()
            BtnSwitch.frame = CGRect(x: 350, y:
                0, width: 60, height: 50)
            BtnSwitch.isOn = true
                
            view.addSubview(BtnSwitch)
        }
        return view
    }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    switch section {
    case 0:
        return 1
    case 1:
        return 1
    case 2:
        return nameinsection2.count
    case 4:
        return 1
    default:
        return nameinsection3.count
    }
    
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 150
        }
        return 80
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        
        
//        if(section == 3)
//        {
//            let title = UILabel()
//            title.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
//            title.text = "Quickly add your friends to Zalo from your contact book"
//            title.frame = CGRect(x: 40, y: 0, width: 300, height: 100)
//            title.numberOfLines = 2
//            title.textAlignment = .center
//            view.addSubview(title)
//            let BtnUP = UIButton()
//            BtnUP.backgroundColor = UIColor.white
//            BtnUP.setTitle("UPDATE PHONEBOOK", for: .normal)
//            BtnUP.setTitleColor(UIColor.black, for: .normal)
//            BtnUP.layer.cornerRadius = 5
//            BtnUP.frame = CGRect(x: 90, y: 70, width: 200, height: 50)
//            view.addSubview(BtnUP)
//        }
        return view
//
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifirer = indexPath.section == 0 ? "Cell1" : indexPath.section == 1 ? "Cell2" : indexPath.section ==  2 ? "Cell3" : indexPath.section ==  3 ? "Cell4" : "Cell5"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifirer, for: indexPath)
        if(indexPath.section == 2)
              {
                
                  let BtnCall = UIButton()
                  BtnCall.setImage(UIImage(named: "PhoneCT"), for: .normal)
                  BtnCall.backgroundColor = UIColor.white
                  BtnCall.frame = CGRect(x: 320, y: 20, width: 40, height: 40)
                  cell.addSubview(BtnCall)
                  
                  let BtnVideoCall = UIButton()
                  BtnVideoCall.setImage(UIImage(named: "VideoCall"), for: .normal)
                  BtnVideoCall.backgroundColor = UIColor.white
                  BtnVideoCall.frame = CGRect(x: 375, y: 20, width: 40, height: 40)
                  cell.addSubview(BtnVideoCall)
                cell.imageView?.image = UIImage(named: ArrayImage2[indexPath.row])
//                cell.imageView?.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
                cell.imageView?.frame.size.width = 10
                cell.imageView?.frame.size.height = 10
                cell.imageView?.contentMode = .scaleAspectFit
                cell.textLabel?.text = nameinsection2[indexPath.row]
              }
        if(indexPath.section == 3)
        {
          
            let BtnCall = UIButton()
            BtnCall.setImage(UIImage(named: "PhoneCT"), for: .normal)
            BtnCall.backgroundColor = UIColor.white
            BtnCall.frame = CGRect(x: 320, y: 20, width: 40, height: 40)
            cell.addSubview(BtnCall)
            
            let BtnVideoCall = UIButton()
            BtnVideoCall.setImage(UIImage(named: "VideoCall"), for: .normal)
            BtnVideoCall.backgroundColor = UIColor.white
            BtnVideoCall.frame = CGRect(x: 375, y: 20, width: 40, height: 40)
            cell.addSubview(BtnVideoCall)
            cell.imageView?.image = UIImage(named: ArrayImage3[indexPath.row])
          cell.imageView?.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
          cell.textLabel?.text = nameinsection3[indexPath.row]
            
        }
        if indexPath.section == 4{
            let title = UILabel()
            title.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            title.text = "Quickly add your friends to Zalo from your contact book"
            title.frame = CGRect(x: 40, y: 0, width: 300, height: 100)
            title.numberOfLines = 2
            title.textAlignment = .center
            cell.addSubview(title)
            let BtnUP = UIButton()
            BtnUP.backgroundColor = UIColor.white
            BtnUP.setTitle("UPDATE PHONEBOOK", for: .normal)
            BtnUP.setTitleColor(UIColor.black, for: .normal)
            BtnUP.layer.cornerRadius = 5
            BtnUP.frame = CGRect(x: 90, y: 70, width: 200, height: 50)
            cell.addSubview(BtnUP)
        }
        
        return cell
        
    }
    

}
