//
//  HomeViewController.swift
//  DemoApp
//
//  Created by الله أكبر on 08/09/21.
//

import UIKit

class HomeViewController: UITableViewController{
    
    
    
    
    
    let cellId = "cellId"
    var products : [Product]  = [Product]()
    
    override func viewDidLoad() {
      super.viewDidLoad()
        view.backgroundColor=Utils.backGroundColor
        configureNavigationBar()
//        setSegmentedController()
        
        createProductArray()
        tableView.register(ProductCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorColor = .clear
        
        
 
      }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        let mySegmentedControl = UISegmentedControl (items: ["Upcoming","In-Progress","Completed"])
        
        let xPostion:CGFloat = UIScreen.main.bounds.width*0.05
        let yPostion:CGFloat = 0
        let elementWidth:CGFloat = UIScreen.main.bounds.width*0.9
        let elementHeight:CGFloat = 50
      
        mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
    
  


        

        mySegmentedControl.tintColor = Utils.backGroundColor
      

      mySegmentedControl.layer.borderWidth = 0.100

      
        mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        return mySegmentedControl
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProductCell
        let currentLastItem = products[indexPath.row]
        cell.isUserInteractionEnabled = false
        cell.product = currentLastItem
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false )
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height*0.5
    }
    
    
    func createProductArray() {
        products.append(Product(productName: "asfar", productImage: #imageLiteral(resourceName: "mask") , productDesc: "jama"))
        products.append(Product(productName: "asfar", productImage: #imageLiteral(resourceName: "mask") , productDesc: "jama"))
        products.append(Product(productName: "asfar", productImage: #imageLiteral(resourceName: "mask") , productDesc: "jama"))
        products.append(Product(productName: "asfar", productImage: #imageLiteral(resourceName: "mask") , productDesc: "jama"))
        
    }
    

    
    
    

    func setSegmentedController() {
        
        
        let mySegmentedControl = UISegmentedControl (items: ["Upcoming","In-Progress","Completed"])
        
        let xPostion:CGFloat = UIScreen.main.bounds.width*0.05
        let yPostion:CGFloat = 0
        let elementWidth:CGFloat = UIScreen.main.bounds.width*0.9
        let elementHeight:CGFloat = 50
      
        mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
    
  


        

        mySegmentedControl.tintColor = Utils.backGroundColor
      

      mySegmentedControl.layer.borderWidth = 0.100

      
        mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
   
        self.view.addSubview(mySegmentedControl)
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
