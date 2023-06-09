//
//  PizzaViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class PizzaViewController: UIViewController {
    var amountOfHa = 0
    var amountOfCC = 0
    var amountOfVC = 0
    var previousPrice = 0
    var totalPrice = 0
    var name = ""

    
    @IBOutlet weak var TotalPriceLabel: UILabel!
    @IBOutlet weak var amount2: UILabel!
    @IBOutlet weak var amount1: UILabel!
    @IBOutlet weak var priceOfHawaii: UILabel!
    @IBOutlet weak var amount3: UILabel!
    @IBOutlet weak var priceOfChickenclub: UILabel!
    @IBOutlet weak var priceofVeggieclub: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


    
    @IBAction func sliderChanged(_ sender: UISlider) {

        if sender.tag == 1{
            amountOfHa = Int(sender.value)
            amount1.text = "\(amountOfHa)"
        }
        if sender.tag == 2{
            amountOfCC = Int(sender.value)
            amount2.text = "\(amountOfCC)"
        }
        if sender.tag == 3{
            amountOfVC = Int(sender.value)
            amount3.text = "\(amountOfVC)"
        }
        
        totalPrice = 14*amountOfHa + 16*amountOfCC + 13*amountOfVC
        TotalPriceLabel.text = "\(totalPrice)"
        
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "finishPizzaOrder" {
           let dest = segue.destination as! AddonViewController
           dest.previousPrice = totalPrice
           dest.name = name
       }
   }

    
   

    
}
