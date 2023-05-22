//
//  PastaViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class BeverageViewController: UIViewController {
    
    
    @IBOutlet weak var cokeAmount: UILabel!
    
    @IBOutlet weak var lemonAmount: UILabel!
    
    @IBOutlet weak var teaAmount: UILabel!
    
    
    @IBOutlet weak var totalPrice: UILabel!
    
    var amountOfCoke = 0
    var amountOfLemon = 0
    var amountOftea = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finishOrder" {
            let dest = segue.destination as! DisplayViewController
            //dest.costumerName = NameTextZone.text!
        }
    }
    
    
    @IBAction func sliderChange(_ sender: UISlider) {
        var totalPriceVar = 0

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
