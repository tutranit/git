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
    let name = [["Triệu","Chánh"],["Tú","Liêm","Cường","Tú","Liêm","Cường","Tú","Liêm","Cường","Tú","Liêm","Cường","Tú","Liêm","Cường"]]
    
    func setUpBarButton(){
        let leftButtonNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(SearchBtn))
        
        
        
        let rightButtonNavigation = UIBarButtonItem(image: UIImage(named: "messageAdd"), style: .plain, target: self, action: #selector(AddMessageBtn))
        
        let nextRightButtonNavigation  = UIBarButtonItem(image: UIImage(named: "AddIcon"), style: .plain, target: self, action: #selector(AddBtn))
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        navigationItem.leftBarButtonItem = leftButtonNavigation
        navigationItem.rightBarButtonItems = [rightButtonNavigation,nextRightButtonNavigation]
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return " "
        }
        return "People you may know"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
         if section == 1
         {
            let titleFooter = UILabel()
            titleFooter.text = "Easily find and message your friends"
            titleFooter.frame = CGRect(x: 40, y: 20, width: 300, height: 50)
            return titleFooter.text
         }
        return " "
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
         let footer = UIView()
        if section == 1{
            footer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
            
            let BtnFF = UIButton()
            BtnFF.setTitle("Find Friend", for: .normal)
            BtnFF.backgroundColor = UIColor.blue
            BtnFF.setTitleColor(UIColor.white, for: .normal)
            BtnFF.frame = CGRect(x: 20, y: 10, width: 300, height: 50)
            BtnFF.layer.cornerRadius = 5
            footer.addSubview(BtnFF)
        }
        
        return footer
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let name = self.name[indexPath.section][indexPath.row]
        cell.textLabel?.text = "\(name) Section: \(indexPath.section)"
        
        return cell
    }
    

    
    
    @objc func SearchBtn(){
        
    }
    
    @objc func AddMessageBtn(){
        
    }
    
    @objc func AddBtn(){
        
    }
    
   

}

