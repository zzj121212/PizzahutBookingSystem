//
//  DisplayViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class DisplayViewController: UIViewController {
 

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pizzaPriceLabel: UILabel!
    
    @IBOutlet weak var addonPriceLabel: UILabel!
    
    @IBOutlet weak var beveragePriceLabel: UILabel!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var name = ""
    var pizzaPrice = 0
    var addonPrice = 0
    var beveragePrice = 0
    var totalPrice = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pizzaPriceLabel.text = "\(pizzaPrice)"
        addonPriceLabel.text = "\(addonPrice)"
        beveragePriceLabel.text = "\(beveragePrice)"
        nameLabel.text = name
    }



}
