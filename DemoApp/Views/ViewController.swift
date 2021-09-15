//
//  ViewController.swift
//  DemoApp
//
//  Created by الله أكبر on 08/09/21.
//

import UIKit

class ViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarControllers()
        view.backgroundColor = Utils.backGroundColor
        configureNavigationBar()

        
        
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
        
        

    }
//
    
    
    
    func setTabBarControllers() {
        
        
        self.setViewControllers([HomeViewController(), OrderViewController(), FeedbackViewController(), ProfilViewController()].map{
            UINavigationController(rootViewController: $0)
        }, animated: true)
        tabBar.items?[0].image=UIImage(named: "home.svg")
        tabBar.items?[0].title="Home"
        
        tabBar.items?[1].image=UIImage(named: "order.svg")
        tabBar.items?[1].title="Order"
        tabBar.items?[2].image=UIImage(named: "feedback.svg")
        tabBar.items?[2].title="Feedback"
        tabBar.items?[3].image=UIImage(named: "profile.png")
        tabBar.items?[3].title="Profil"
        
        
    }

}

