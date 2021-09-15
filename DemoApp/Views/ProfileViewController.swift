//
//  FeedbackViewController.swift
//  DemoApp
//
//  Created by الله أكبر on 08/09/21.
//

import UIKit

class ProfilViewController: UIViewController {
    


 
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 150) //Step One

    
    
    
    
    lazy var scrollView : UIScrollView = {
        let view = UIScrollView(frame : .zero)
        view.frame = self.view.bounds
        view.contentInsetAdjustmentBehavior = .never
        view.contentSize = contentViewSize
        view.backgroundColor = .white
        return view
    }()

    lazy var containerView : UIView = {
        let view = UIView()
        view.frame.size = contentViewSize
        view.backgroundColor = .white
        return view
    }()
    
    lazy var headerView: UIView = {
       let headerView = UIView(frame: CGRect(x: 0, y: 90, width: 427, height: 165))
        headerView.backgroundColor = UIColor.white
       headerView.layer.shadowColor = UIColor.gray.cgColor
       headerView.layer.shadowOffset = CGSize(width: 0, height: 10)
        headerView.layer.shadowOpacity = 0.1
       headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 25
       return headerView
     }()
    
    lazy var numberView: UIView = {
       let headerView = UIView(frame: CGRect(x: 15, y: 350, width: 400, height: 65))
        headerView.backgroundColor = UIColor.systemGray
       headerView.layer.shadowColor = UIColor.gray.cgColor
       headerView.layer.shadowOffset = CGSize(width: 0, height: 10)
        headerView.layer.shadowOpacity = 0.1
       headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 25
       return headerView
     }()
    lazy var counterView: UIView = {
       let headerView = UIView(frame: CGRect(x: 15, y: 435, width: 400, height: 65))
        headerView.backgroundColor = UIColor.systemGray
       headerView.layer.shadowColor = UIColor.gray.cgColor
       headerView.layer.shadowOffset = CGSize(width: 0, height: 10)
        headerView.layer.shadowOpacity = 0.1
       headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 25
       return headerView
     }()
    
    lazy var saveView: UIView = {
       let headerView = UIView(frame: CGRect(x: 15, y: 520, width: 400, height: 65))
        headerView.backgroundColor = Utils.tabViewColor
       headerView.layer.shadowColor = UIColor.gray.cgColor
       headerView.layer.shadowOffset = CGSize(width: 0, height: 10)
        headerView.layer.shadowOpacity = 0.1
       headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 25
       return headerView
     }()
    
    lazy var bagView: UIView = {
       let headerView = UIView(frame: CGRect(x: 15, y: 740, width: 400, height: 65))
        headerView.backgroundColor = Utils.bagViewColor
       headerView.layer.shadowColor = UIColor.gray.cgColor
       headerView.layer.shadowOffset = CGSize(width: 0, height: 10)
        headerView.layer.shadowOpacity = 0.1
       headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 25
       return headerView
     }()
    
    


    lazy var agentprofilTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 60, y: 50, width: 300, height: 40))
      headerTitle.font = UIFont.systemFont(ofSize: 19, weight: .medium)
      headerTitle.text = "Agent profil"
      headerTitle.textAlignment = .left
      return headerTitle
    }()
    lazy var numberTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 40, y: 360, width: 300, height: 40))
        headerTitle.textColor = .white
      headerTitle.font = UIFont.systemFont(ofSize: 19, weight: .medium)
      headerTitle.text = "(+99890)777-00-99"
      headerTitle.textAlignment = .left
      return headerTitle
    }()
    lazy var counterTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 40, y: 450, width: 300, height: 40))
        headerTitle.textColor = .white
      headerTitle.font = UIFont.systemFont(ofSize: 19, weight: .medium)
      headerTitle.text = "Courtney Henry"
      headerTitle.textAlignment = .left
      return headerTitle
    }()
    lazy var saveTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 190, y: 530, width: 300, height: 40))
        headerTitle.textColor = .white
      headerTitle.font = UIFont.systemFont(ofSize: 19, weight: .medium)
      headerTitle.text = "Save"
      headerTitle.textAlignment = .left
      return headerTitle
    }()

    
    
    lazy var headerTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 110, y: 160, width: 300, height: 40))
      headerTitle.font = UIFont.systemFont(ofSize: 22, weight: .medium)

      headerTitle.text = "Courney henry "
      headerTitle.textAlignment = .left
      return headerTitle
    }()
    
    
    
    
    lazy var agentTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 110, y: 195, width: 300, height: 40))
      headerTitle.font = UIFont.systemFont(ofSize: 20, weight: .medium)
      headerTitle.text = "Agent "
        headerTitle.textColor = .gray
      headerTitle.textAlignment = .left
      return headerTitle
    }()
    lazy var workTitle: UILabel = {
      let headerTitle = UILabel(frame: CGRect(x: 120, y: 750, width: 300, height: 40))
      headerTitle.font = UIFont.systemFont(ofSize: 20, weight: .medium)
      headerTitle.text = "Work time "
        headerTitle.textColor = .white
      headerTitle.textAlignment = .left
      return headerTitle
    }()

    
    lazy var contentView: UIImageView = {
      let contentView = UIImageView(frame: CGRect(x: 20, y: 160, width: 80, height: 80))
      contentView.image = UIImage(named: "elif.png")
      return contentView
    }()
    
    lazy var bagsView: UIImageView = {
      let contentView = UIImageView(frame: CGRect(x: 30, y: 758, width: 30, height: 30))
      contentView.image = UIImage(named: "fr.png")
      return contentView
    }()
    
    lazy var rightView: UIImageView = {
      let contentView = UIImageView(frame: CGRect(x: 370, y: 758, width: 30, height: 30))
      contentView.image = UIImage(named: "fra.png")
      return contentView
    }()
    
    
    
    

    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavigationBar()
        
        self.view.addSubview(scrollView)
          self.scrollView.addSubview(containerView)
        self.scrollView.addSubview(headerView)
        self.scrollView.addSubview(agentprofilTitle)
        self.scrollView.addSubview(headerTitle)
        self.scrollView.addSubview(contentView)
        self.scrollView.addSubview(agentTitle)
        self.scrollView.addSubview(numberView)
        self.scrollView.addSubview(counterView)
        self.scrollView.addSubview(numberTitle)
        self.scrollView.addSubview(counterTitle)
        self.scrollView.addSubview(saveView)
        self.scrollView.addSubview(saveTitle)
        self.scrollView.addSubview(bagView)
        self.scrollView.addSubview(bagsView)
        self.scrollView.addSubview(rightView)
        self.scrollView.addSubview(workTitle)
        
        
        

        
        
   
          }
       
    

    

   
    
    @objc func handleMenuToggle(){
        print("toggle menu..")
    }

    @objc func profile(){
        print(profile)
    }

    func configureNavigationBar(){
     



        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Frame").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))



        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "mask").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(profile))
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

    }
}
