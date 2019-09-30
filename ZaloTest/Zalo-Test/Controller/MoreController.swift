//
//  MoreController.swift
//  Zalo-Test
//
//  Created by Apple on 9/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class MoreController: UIViewController,UITableViewDataSource,UIScrollViewDelegate,UITableViewDelegate {
    
    let pagecontrol = UIPageControl()
    var imagename = ["Con gà","Con cua","Con tôm","Con cá","Hình bầu"]
    let name = ["Con gà","Con cua","Con tôm","Con cá","Hình bầu"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpBarButton()
       
    }
    

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pagecontrol.currentPage = Int(pageNumber)
    }
    
    func setUpBarButton(){
        let searchbar = UISearchBar()
               searchbar.placeholder = "Search friends, messages"
               
               navigationItem.titleView = searchbar
        let leftButtonNavigation = UIBarButtonItem(image: UIImage(named: "search"), style: .plain, target: self, action: #selector(SearchBtn))
        
        
        
        let rightButtonNavigation = UIBarButtonItem(image: UIImage(named: "qrCode"), style: .plain, target: self, action: #selector(QrCode))
        
        let nextRightButtonNavigation  = UIBarButtonItem(image: UIImage(named: "Setting"), style: .plain, target: self, action: #selector(Setting))
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
//        navigationItem.leftBarButtonItem = leftButtonNavigation
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section != 0  || indexPath.section != 1{
                   return 80
               }
               return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        default:
            return 5
        }
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
        
        if indexPath.section == 0{
            cell.imageView?.image = UIImage(named: "Alarm")
            cell.textLabel?.text = "Tú Trần"
            cell.detailTextLabel?.text = "Tap to view your profile"
        }
        if indexPath.section == 1{
            
            pagecontrol.frame = CGRect(x: 180, y: 65, width: 75, height: 20)
             pagecontrol.numberOfPages = imagename.count
            //pagecontrol.tintColor = UIColor.systemPink
            pagecontrol.backgroundColor = UIColor.black
             cell.addSubview(pagecontrol)
            let Scrollview = UIScrollView()
            Scrollview.frame = CGRect(x: 0, y: 0, width: 400, height: 60)


                   for index in 0..<imagename.count
                   {
                       frame.origin.x = Scrollview.frame.size.width * CGFloat(index)
                       frame.size = Scrollview.frame.size

                       let imageview = UIImageView(frame: frame)
                       imageview.image = UIImage(named: imagename[index])
                       Scrollview.addSubview(imageview)
                   }
                   Scrollview.contentSize = CGSize(width: (Scrollview.frame.size.width) * (CGFloat(imagename.count)), height: Scrollview.frame.size.height)
                   Scrollview.delegate = self
            Scrollview.isPagingEnabled = true
            cell.addSubview(Scrollview)
        }
       
        return cell
    }
}
