//
//  ViewController.swift
//  CoolCars
//
//  Created by Jake Johnson on 6/15/20.
//  Copyright © 2020 Jake Johnson. All rights reserved.
//

import UIKit

class CarSelectVC: UIViewController {
    
    var car: Car!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        car = Car()
    }

    @IBAction func onR8Tapped(_ sender: Any) {
        selectCar("R8")
    }
    
    @IBAction func onA4Tapped(_ sender: Any) {
        selectCar("A4")
    }
    
    func selectCar(_ carName: String) {
        if carName == "R8" {
            car.make = "Audi"
            car.model = "R8 Spyder"
            car.year = "2020"
            car.mpgCity = "13"
            car.mpgHwy = "20"
            car.hp = "562"
            car.performance = "2.8"
            car.image = "audi_r8_audi-r8-coupe_2020-1589821595602"
        } else {
            car.make = "Audi"
            car.model = "A4 Sedan"
            car.year = "2021"
            car.mpgCity = "23"
            car.mpgHwy = "34"
            car.hp = "261"
            car.performance = "3.8"
            car.image = "audi_a4_audi-a4_2021-1591043770859"
        }
        performSegue(withIdentifier: "carDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let carDetailVC = segue.destination as? CarDetailVC {
            carDetailVC.car = car
        }
    }
}

