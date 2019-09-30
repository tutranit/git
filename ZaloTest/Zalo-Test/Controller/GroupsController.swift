//
//  GroupsController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class GroupsController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    let ArrayImage = ["Con cá","Con tôm","Con cua","Hình bầu","Nai","Con gà","Trò chơi bầu cua"]
    let ArrayName = ["Nhóm con cá","Nhóm con tôm","Nhóm con cua","Nhóm bầu","Nhóm con nai","Nhóm con gà","Nhóm bầu cua"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBarButton()
        // Do any additional setup after loading the view.
    }
    
    func setUpBarButton(){
        let searchbar = UISearchBar()
               searchbar.placeholder = "Search friends, messages"
               
               navigationItem.titleView = searchbar
        let leftButtonNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(SearchBtn))
        
        let rightButtonNavigation = UIBarButtonItem(image: UIImage(named: "messageAdd"), style: .plain, target: self, action: #selector(AddMessageBtn))
        
        let nextRightButtonNavigation  = UIBarButtonItem(image: UIImage(named: "AddIcon"), style: .plain, target: self, action: #selector(AddBtn))
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
//        navigationItem.leftBarButtonItem = leftButtonNavigation
        navigationItem.rightBarButtonItems = [rightButtonNavigation,nextRightButtonNavigation]
        
    }
    
    @IBAction func BtnCalendar(_ sender: Any) {
        print("a")
    }
    @IBAction func BtnReminder(_ sender: Any) {
        print("b")
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return " "
        }
        else if section == 1{
            return "Top group features"
        }
        return "Joined groups"
    }
    
    @objc func SearchBtn(){
        
    }
    
    @objc func AddMessageBtn(){
        
    }
    
    @objc func AddBtn(){
        
    }
    
    func setupButton(){
        let CreateGrBtn = UIButton()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 || section == 1{return 1}
        return 7
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier = indexPath.section == 0 ? "CellGroups" : indexPath.section == 1 ? "CellGroup2" : "CellGroup3"
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath)
        if indexPath.section == 2{
            cell.imageView?.image = UIImage(named: ArrayImage[indexPath.row])
            cell.textLabel?.text = ArrayName[indexPath.row]
            
//            cell.imageView?.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
            cell.imageView?.layer.cornerRadius = 5
//            cell.imageView?.clipsToBounds = true
//            cell.imageView?.layer.masksToBounds = true
            
        }
        
        return cell
    }

    
}
