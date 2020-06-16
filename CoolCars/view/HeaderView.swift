//
//  HeaderView.swift
//  CoolCars
//
//  Created by Jake Johnson on 6/15/20.
//  Copyright © 2020 Jake Johnson. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    override func layoutSubviews() {
        let shadowPath = UIBezierPath(rect: bounds)
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowOpacity = 0.1
        layer.shadowPath = shadowPath.cgPath
    }
}
