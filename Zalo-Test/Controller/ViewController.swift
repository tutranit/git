//
//  ViewController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpBarButton()
        
        
    }
    let name = [["Triệu","Chánh"],["Tú","Liêm","Cường","Tú","Liêm","Cường","Tú","Liêm","Cường","Tú","Liêm","Cường","Tú","Liêm","Cường"],[" "]]
    
    func setUpBarButton(){
        let leftButtonNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(SearchBtn))
        
        
        
        let rightButtonNavigation = UIBarButtonItem(image: UIImage(named: "messageAdd"), style: .plain, target: self, action: #selector(AddMessageBtn))
        
        let nextRightButtonNavigation  = UIBarButtonItem(image: UIImage(named: "AddIcon"), style: .plain, target: self, action: #selector(AddBtn))
        
        let searchbar = UISearchBar()
        searchbar.placeholder = "Search friends, messages"
        
        navigationItem.titleView = searchbar
        
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
//        navigationItem.searchController = centerFieldNavigation
        navigationItem.rightBarButtonItems = [rightButtonNavigation,nextRightButtonNavigation]
     
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 1:
            return "Pepple you may know"
        default:
            return " "
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name[section].count
    }
    
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2{
            return 100.0
        }
        return 80
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier : String
        switch indexPath.section {
        case 0:
            Identifier = "Cell1"
        case 1:
            Identifier = "Cell2"
        default:
             Identifier = "Cell3"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath)
        
        let name = self.name[indexPath.section][indexPath.row]
        cell.textLabel?.text = name
        
        if indexPath.section == 1{
            let BtnAdd = UIButton()
            BtnAdd.setTitle("ADD", for: .normal)
            BtnAdd.backgroundColor = #colorLiteral(red: 0.2815262222, green: 0.7318159536, blue: 0.9764705896, alpha: 1)
            BtnAdd.setTitleColor(UIColor.blue, for: .normal)
            BtnAdd.layer.cornerRadius = 5
            BtnAdd.frame = CGRect(x: 320, y: 20, width: 60, height: 40)
            cell.addSubview(BtnAdd)
            
            let BtnX = UIButton()
            BtnX.setTitle("X", for: .normal)
            BtnX.backgroundColor = UIColor.white
            BtnX.setTitleColor(UIColor.gray, for: .normal)
            BtnX.frame = CGRect(x: 385, y: 20, width: 20, height: 40)
            cell.addSubview(BtnX)
        }
        
        if indexPath.section == 2 {
            let titleFooter = UILabel()
                        titleFooter.text = "Easily find and message your friends"
                        titleFooter.frame = CGRect(x: 60, y: 0, width: 300, height: 30)
                        view.addSubview(titleFooter)
            cell.addSubview(titleFooter)
            let BtnFF = UIButton()
            BtnFF.setTitle("FIND FRIENDS", for: .normal)
            BtnFF.setTitleColor(UIColor.white, for: .normal)
            BtnFF.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            BtnFF.layer.cornerRadius = 5
            BtnFF.frame = CGRect(x: 100, y: 40, width: 200, height: 30)
           
            cell.addSubview(BtnFF)
        }
        
        return cell
    }
    

    
    
    @objc func SearchBtn(){
        
    }
    
    @objc func AddMessageBtn(){
        
    }
    
    @objc func AddBtn(){
        
    }
    
   

}

