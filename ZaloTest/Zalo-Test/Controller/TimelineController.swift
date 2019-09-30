//
//  TimelineController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TimelineController: UIViewController,UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpBarButton()
    }
    

    func setUpBarButton(){
        let searchbar = UISearchBar()
               searchbar.placeholder = "Search friends, messages"
               
               navigationItem.titleView = searchbar
        let leftButtonNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(SearchBtn))
        
        let rightButtonNavigation = UIBarButtonItem(image: UIImage(named: "addImage"), style: .plain, target: self, action: #selector(AddImageBtn))
        
        let nextRightButtonNavigation  = UIBarButtonItem(image: UIImage(named: "Alarm"), style: .plain, target: self, action: #selector(Alarm))
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
//        navigationItem.leftBarButtonItem = leftButtonNavigation
        navigationItem.rightBarButtonItems = [rightButtonNavigation,nextRightButtonNavigation]
        
    }
    
    @objc func SearchBtn(){
        
    }
    
    @objc func AddImageBtn(){
        
    }
    
    @objc func Alarm(){
        
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 3{
            return 5
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier = indexPath.section == 0 ? "Cell1" : indexPath.section == 1 ? "Cell2" : indexPath.section == 2 ? "Cell3" : "Cell4"
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath)
        return cell
    }
    

}
