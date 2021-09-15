//
//  feedBackViewCells.swift
//  DemoApp
//
//  Created by الله أكبر on 14/09/21.
//

import UIKit
protocol ProCellDelegate {
    func increaseNumber(cell: FeedbackCell,number : Int)
    func decreaseNumber(cell: FeedbackCell,number : Int)
}

class FeedbackCell : UITableViewCell {
    var delegate : ProCellDelegate?
    let minValue = 0
    var pro : Pro? {
        didSet {
            
     
       
            proImage.image = pro?.proImage
            proNameLabel.text = pro?.proName
            proDescriptionLabel.text = pro?.proDesc
            proBall.text = pro?.proBall
            proStar.image = pro?.proStar
            
     
        }
    }
    
    private let backView :UIView = {
        let myView=UIView(frame: CGRect(x: 20 , y: 20, width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.100));
        myView.backgroundColor = Utils.feedtabViewColor
        myView.layer.cornerRadius=25
       return myView
        
    }()
    

    
    private let proNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    private let proDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    

    
    private let proImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "elpi"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = false
        return imgView
    }()
    
    
    
    private let proStar : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "fram"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    
    private let proBall : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .right
        lbl.numberOfLines = 0
        return lbl
    }()
    
    

    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor=Utils.backGroundColor
        addSubview(backView)
        addSubview(proStar)
        addSubview(proBall)
        addSubview(proImage)
        addSubview(proNameLabel)
        addSubview(proDescriptionLabel)
      
        
        

        
        proImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 20, paddingLeft: 30, paddingBottom: 5, paddingRight: 0, width: 43, height: 43, enableInsets: false)
        proNameLabel.anchor(top: topAnchor, left: proImage.rightAnchor, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 30, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
        proDescriptionLabel.anchor(top: proNameLabel.bottomAnchor, left: proImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 30, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
        proStar.anchor(top: topAnchor, left: proDescriptionLabel.rightAnchor, bottom: bottomAnchor, right: nil, paddingTop: 20, paddingLeft: 40, paddingBottom: 5, paddingRight: 30, width: 30, height: 30, enableInsets: false)
        proBall.anchor(top: topAnchor, left: proStar.rightAnchor, bottom: bottomAnchor, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 5, paddingRight: 30, width: 0, height: 0, enableInsets: false)


    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    public func populteCell(imageUrl:String,name:String){
//        proImage.image = UIImage(named:imageUrl)
//        proNameLabel.text = name
//    }
}
















