//
//  HomeViewController.swift
//  DemoApp
//
//  Created by الله أكبر on 08/09/21.
//

import UIKit

class OrderViewController: UITableViewController{
    
    var searchController = UISearchController(searchResultsController: nil)
    
    
    
    let cellId = "cellId"
    var prod : [Prod]  = [Prod]()
    
    override func viewDidLoad() {
      super.viewDidLoad()
        configureNavigationBar()
        createProductArray()
        view.backgroundColor=Utils.backGroundColor
     
              
        tableView.register(ProdCell.self, forCellReuseIdentifier: cellId)
        
        
        
        navigationItem.searchController = searchController
        searchController.searchBar.placeholder = "Search Orders"
        searchController.searchBar.frame(forAlignmentRect: CGRect(x: 12, y: 12, width: 12, height: 22))
   

 
      }
    
 
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
 
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProdCell
        let currentLastItem = prod[indexPath.row]
        cell.isUserInteractionEnabled = false
        cell.prod = currentLastItem
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prod.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*0.5
    }
    
    
    func createProductArray() {
        prod.append(Prod(prodImage: #imageLiteral(resourceName: "mask"), prodName: "asfar" , prodDesc: "jama"))
        prod.append(Prod(prodImage: #imageLiteral(resourceName: "Frame"), prodName: "asfar" , prodDesc: "jama"))
        prod.append(Prod(prodImage: #imageLiteral(resourceName: "mask"), prodName: "asfar" , prodDesc: "jama"))
        prod.append(Prod(prodImage: #imageLiteral(resourceName: "profile"), prodName: "asfar" , prodDesc: "jama"))
        
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
    
      
      @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
      {
          print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
      }

  
    

}

