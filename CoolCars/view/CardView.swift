//
//  CardView.swift
//  CoolCars
//
//  Created by Jake Johnson on 6/15/20.
//  Copyright © 2020 Jake Johnson. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    var car: Car!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        layer.borderColor = UIColor.systemGray2.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 5.0
        
        let shadowPath = UIBezierPath(rect: bounds)
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowOpacity = 0.1
        layer.shadowPath = shadowPath.cgPath
    }

}
