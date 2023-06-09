//
//  PastaViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class BeverageViewController: UIViewController {
    
    @IBOutlet weak var pizzaOrderedLabel: UILabel!
    
    @IBOutlet weak var AddONOrderedLabel: UILabel!
    @IBOutlet weak var cokeAmount: UILabel!
    
    @IBOutlet weak var lemonAmount: UILabel!
    
    @IBOutlet weak var teaAmount: UILabel!
    
    
    @IBOutlet weak var totalPrice: UILabel!
    
    var name = ""
    
    var amountOfCoke = 0
    var amountOfLemon = 0
    var amountOftea = 0
    var totalPriceVar = 0
    var pizzaOrdered = 0
    var AddonOrdered = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pizzaOrderedLabel.text = "\(pizzaOrdered)"
        AddONOrderedLabel.text = "\(AddonOrdered)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FinishOrder" {
            let dest = segue.destination as! DisplayViewController
            dest.addonPrice = AddonOrdered
            dest.beveragePrice = totalPriceVar
            dest.pizzaPrice = pizzaOrdered
            dest.name = name
        }
    }
    
    
    @IBAction func sliderChange(_ sender: UISlider) {

        if sender.tag == 1{
            amountOfCoke = Int(sender.value)
            cokeAmount.text = "\(amountOfCoke)"
        }
        if sender.tag == 2{
            amountOfLemon = Int(sender.value)
            lemonAmount.text = "\(amountOfLemon)"
        }
        if sender.tag == 3{
            amountOftea = Int(sender.value)
            teaAmount.text = "\(amountOftea)"
        }
        
        totalPriceVar = 3 * amountOfCoke + 4 * amountOfLemon + 5 * amountOftea
        totalPrice.text = "\(totalPriceVar)"
    }
    

}
