//
//  CarDetailVCViewController.swift
//  CoolCars
//
//  Created by Jake Johnson on 6/15/20.
//  Copyright © 2020 Jake Johnson. All rights reserved.
//

import UIKit

class CarDetailVC: UIViewController {
    
    var car: Car!
    
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var carMake: UILabel!
    
    @IBOutlet weak var carModelYear: UILabel!
    
    @IBOutlet weak var carFuel: UILabel!
    
    @IBOutlet weak var carHorsePower: UILabel!
    
    @IBOutlet weak var carPerformance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        carMake.text = car.make
        carModelYear.text = "\(car.year!) - \(car.model!)"
        carFuel.text = "\(car.mpgCity!) / \(car.mpgHwy!)"
        carHorsePower.text = "\(car.hp!) hp"
        carPerformance.text = "\(car.performance!) s"
        carImage.image = UIImage(named: car.image)
    }
 }
