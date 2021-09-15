//
//  Extensions.swift
//  DemoApp
//
//  Created by الله أكبر on 08/09/21.
//

import Foundation
import UIKit

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

extension UIView {
 
 func anchor (top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat, enableInsets: Bool) {
 var topInset = CGFloat(0)
 var bottomInset = CGFloat(0)
 
 if #available(iOS 11, *), enableInsets {
 let insets = self.safeAreaInsets
 topInset = insets.top
 bottomInset = insets.bottom
 
    print("Top: \(topInset)")
        print("bottom: \(bottomInset)")
 }
 
 translatesAutoresizingMaskIntoConstraints = false
 
 if let top = top {
 self.topAnchor.constraint(equalTo: top, constant: paddingTop+topInset).isActive = true
 }
 if let left = left {
 self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
 }
 if let right = right {
 rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
 }
 if let bottom = bottom {
 bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom-bottomInset).isActive = true
 }
 if height != 0 {
 heightAnchor.constraint(equalToConstant: height).isActive = true
 }
 if width != 0 {
 widthAnchor.constraint(equalToConstant: width).isActive = true
 }
 
 }
 
}
