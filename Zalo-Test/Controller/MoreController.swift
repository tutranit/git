//
//  MoreController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class MoreController: UIViewController {

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

}
