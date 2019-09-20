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
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        navigationItem.leftBarButtonItem = leftButtonNavigation
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
    
    
    
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let view = UIView()
//        if section == 1
//        {
//            let titleFooter = UILabel()
//            titleFooter.text = "Easily find and message your friends"
//            titleFooter.frame = CGRect(x: 60, y: 0, width: 300, height: 30)
//            view.addSubview(titleFooter)
//            let BtnFF = UIButton()
//            BtnFF.setTitle("FIND FRIENDS", for: .normal)
//            BtnFF.setTitleColor(UIColor.white, for: .normal)
//            BtnFF.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
//            BtnFF.layer.cornerRadius = 5
//            BtnFF.frame = CGRect(x: 100, y: 40, width: 200, height: 30)
//            view.addSubview(BtnFF)
//
//        }
//        return view
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2{
            return 100.0
        }
        return 40
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

