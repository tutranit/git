//
//  MoreController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class MoreController: UIViewController,UITableViewDataSource {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpBarButton()
    }
    

    func setUpBarButton(){
        let leftButtonNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(SearchBtn))
        
        let rightButtonNavigation = UIBarButtonItem(image: UIImage(named: "qrCode"), style: .plain, target: self, action: #selector(QrCode))
        
        let nextRightButtonNavigation  = UIBarButtonItem(image: UIImage(named: "Setting"), style: .plain, target: self, action: #selector(Setting))
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        navigationItem.leftBarButtonItem = leftButtonNavigation
        navigationItem.rightBarButtonItems = [rightButtonNavigation,nextRightButtonNavigation]
        
    }
    
    @objc func SearchBtn(){
        
    }
    
    @objc func QrCode(){
        
    }
    
    @objc func Setting(){
        
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 3:
            return "Top selling"
        case 4:
            return "Top Games"
        case 5:
            return "Sticker"
        case 6:
            return "Channel"
        case 7:
            return "official Account Suggestions"
        default:
            return " "
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section != 0 {
            return 5
        }
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier : String
        switch indexPath.section {
        case 0:
            Identifier = "Cell1"
        case 1:
            Identifier = "Cell2"
        case 2:
            Identifier = "Cell3"
        case 3:
            Identifier = "Cell4"
        case 4:
            Identifier = "Cell5"
        case 5:
            Identifier = "Cell6"
        case 6:
            Identifier = "Cell7"
        case 7:
            Identifier = "Cell8"
        default:
            Identifier = "Cell8"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath)
        return cell
    }
}
