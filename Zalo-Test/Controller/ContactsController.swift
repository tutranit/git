//
//  ContactsController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ContactsController: UIViewController,UITableViewDataSource {
   
    let name = [["Tú"],["Cường"],["Liêm"],["Quý"]]

  
    @IBOutlet weak var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavigationButton()
       
        // Do any additional setup after loading the view.
    }
    @IBAction func IndexChange(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 1 {
            remove(asChildViewController: OFF_selected1)
            addViewController(asChildViewController: Contacts_selected1)
        }
        else
        {
            remove(asChildViewController: Contacts_selected1)
            addViewController(asChildViewController: OFF_selected1)
        }
    }

    func setUpNavigationButton(){
        let leftBtnNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(searchBtn))
        
        let rightBtnNavigation = UIBarButtonItem(image: UIImage(named: "addContacts"), style: .plain, target: self, action: #selector(AddContacts))
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        navigationItem.leftBarButtonItem = leftBtnNavigation
        navigationItem.rightBarButtonItem = rightBtnNavigation
    }
    
    @objc func searchBtn(){
        
    }
    
    @objc func AddContacts(){
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return " "
        }
        else if section == 1 {
            return "Close Friends"
        }
        else if section == 2 {
            return "Recent Update"
        }
        return "All Contacts"
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellContacts", for: indexPath)
        
        //cell.imageView?.image = UIImage(named: "search")
        cell.textLabel?.text = self.name[indexPath.section][indexPath.row]
        
        return cell
    }
    
    lazy var Contacts_selected1 : Contacts_selected = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        var viewcontroller = storyboard.instantiateViewController(withIdentifier: "Contacts_selected") as! Contacts_selected
        
        self.addViewController(asChildViewController: viewcontroller)
        
        return viewcontroller
        
        
    }()
    
    lazy var OFF_selected1 : OFFCIAL_selected = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        var viewcontroller = storyboard.instantiateViewController(withIdentifier: "OFFCIAL_selected") as! OFFCIAL_selected
        
        self.addViewController(asChildViewController: viewcontroller)
        
        return viewcontroller
    }()
    
    private func remove(asChildViewController viewController: UIViewController) {
       
        viewController.willMove(toParent: viewController)
        
        
        viewController.view.removeFromSuperview()
        
      
        viewController.removeFromParent()
    }
    
    private func addViewController(asChildViewController viewController: UIViewController) {
        addChild(viewController)
        
        
        view.addSubview(viewController.view)
        
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
        viewController.didMove(toParent: self)
    }

}
