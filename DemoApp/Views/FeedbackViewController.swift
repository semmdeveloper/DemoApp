//
//  FeedbackViewController.swift
//  DemoApp
//
//  Created by الله أكبر on 08/09/21.
//

import UIKit

class FeedbackViewController: UITableViewController{
    

    
   
    
    let cellId = "cellId"
    var pro : [Pro]  = [Pro]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createProductArray()
//        self.tableView.contentInset = UIEdgeInsets(top: 50,left: 0,bottom: 0,right: 0)
        view.backgroundColor=Utils.backGroundColor
        
        configureNavigationBar()
        tableView.separatorColor = .clear
        tableView.register(FeedbackCell.self, forCellReuseIdentifier: cellId)
                }
   
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var label : UILabel = UILabel()
        if (section == 0){
            label.text = "       26 Feb, 2020                                                 See all"
        }else if (section == 1){
            label.textColor = .black
            
    label.text = "      25 Feb, 2020                                                 See all"
        } else if(section==2){
            label.text = "       24 Feb, 2020                                                  See all"}
return label
    }
    

   
    
    
    
    

    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }



    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! FeedbackCell
        let currentLastItem = pro[indexPath.row]
        cell.pro = currentLastItem
        cell.isUserInteractionEnabled = false
 

        return cell
    }


    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 1) {
            return "sdasdasdasdas"
        }
        return nil
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pro.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row==2
//        {
//            return UIScreen.main.bounds.height*0.15
//        }
        return UIScreen.main.bounds.height*0.12

    }
    

  

    
    
    func createProductArray() {
        
        
        
        pro.append(Pro(proName: "Client", proImage: #imageLiteral(resourceName: "elpi") , proDesc: "Jenny vilson", proStar: #imageLiteral(resourceName: "fram"), proBall: "5,5"))
        pro.append(Pro(proName: "Client", proImage: #imageLiteral(resourceName: "elpi") , proDesc: "Courtney Henry", proStar: #imageLiteral(resourceName: "fram"), proBall: "5,5"))
        pro.append(Pro(proName: "Client", proImage: #imageLiteral(resourceName: "elpi") , proDesc: "Brooklyn Simmons", proStar: #imageLiteral(resourceName: "fram"), proBall: "5,5"))
        pro.append(Pro(proName: "Client", proImage: #imageLiteral(resourceName: "elif") , proDesc: "Darrel Steward", proStar: #imageLiteral(resourceName: "fram"), proBall: "5,5"))
        pro.append(Pro(proName: "Client", proImage: #imageLiteral(resourceName: "elif") , proDesc: "Cody Fisher", proStar: #imageLiteral(resourceName: "fram"), proBall: "5,5"))
    
        pro.append(Pro(proName: "Client", proImage: #imageLiteral(resourceName: "elif") , proDesc: "Ralph Edvards", proStar: #imageLiteral(resourceName: "fram"), proBall: "5,5"))
    
    
        

        
    }
    


 
    
    
  
    
    
    
    
    
    
    
    
    @objc func handleMenuToggle(){
        print("toggle menu..")
    }
    
    @objc func profile(){
        print(profile)
    }
    
    
    
//
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = Utils.backGroundColor


        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Frame").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "mask").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(profile))
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        
        

    }

}










