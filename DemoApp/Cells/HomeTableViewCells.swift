//
//  ProductCell.swift
//  Sample_TableView
//
//  Created by Esat Kemal Ekren on 5.04.2018.
//  Copyright © 2018 Esat Kemal Ekren. All rights reserved.
//

import UIKit

protocol ProductCellDelegate {
    func increaseNumber(cell: ProductCell,number : Int)
    func decreaseNumber(cell: ProductCell,number : Int)
}

class ProductCell : UITableViewCell {
    var delegate : ProductCellDelegate?
    let minValue = 0
    var product : Product? {
        didSet {
            self.backgroundColor=Utils.backGroundColor
            let myNewView=UIView(frame: CGRect(x: 20 , y: 20, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.480));
            myNewView.backgroundColor = Utils.tableViewColor
            myNewView.layer.cornerRadius=25
            myNewView.layer.borderColor = Utils.tableViewColor.cgColor
            self.contentView.addSubview(myNewView)
            

//            productNameLabel.text = product?.productName
          
            
        
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            label.center = CGPoint(x: 158, y: 70)
            label.textAlignment = .left
            label.text = "Agents"
            self.addSubview(label)

            let lal = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            lal.center = CGPoint(x: 158, y: 100)
            lal.textAlignment = .left
            lal.text = "Albert Gogolini"
            self.addSubview(lal)
            
            let lab = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            lab.center = CGPoint(x: 158, y: 160)
            lab.textAlignment = .left
            lab.text = "Data, time of order"
            self.addSubview(lab)
            
            let lak = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            lak.center = CGPoint(x: 270, y: 160)
            lak.textAlignment = .right
            lak.text = "Service type"
            self.addSubview(lak)
            
            let kal = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            kal.center = CGPoint(x: 158, y: 190)
            kal.textAlignment = .left
            kal.text = "23-Jun,2011 | 14:34"
            self.addSubview(kal)
            
            let kak = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            kak.center = CGPoint(x: 270, y: 190)
            kak.textAlignment = .right
            kak.text = "Food"
            self.addSubview(kak)
            
            let mam = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            mam.center = CGPoint(x: 158, y: 250)
            mam.textAlignment = .left
            mam.text = "Location"
            self.addSubview(mam)
            
            let nam = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            nam.center = CGPoint(x: 158, y: 270)
            nam.textAlignment = .left
            nam.text = "One Apple Park Way Cupertino, CA 95014 "
            self.addSubview(nam)
            
            let b = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            b.center = CGPoint(x: 158, y: 360)
            b.textAlignment = .left
            b.text = "Amount"
            self.addSubview(b)
            
            let a = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            a.center = CGPoint(x: 158, y: 380)
            a.textAlignment = .left
            a.text = "$550"
            self.addSubview(a)
            



            

               let boldAttribute = [
                  NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 18.0)!]
               
               let boldText = NSAttributedString(string: "Albert Gogolini", attributes: boldAttribute)
              
               let newString = NSMutableAttributedString()
               newString.append(boldText)
               lal.attributedText = newString
          
     
            
        }
    }


    


    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)


        
        

    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    
    

    
 
    
    
}

