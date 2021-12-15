//
//  RestaurantDetailViewController.swift
//  RogavaLetsEat
//
//  Created by IMAC on 14.12.21.
//

import UIKit

class RestaurantDetailViewController: UITableViewController {
    
    var selectedRestaurant: RestaurantItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dump(selectedRestaurant as Any)
        
    }
    
}
