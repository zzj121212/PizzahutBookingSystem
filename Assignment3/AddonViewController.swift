//
//  AddonViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class AddonViewController: UIViewController {
    
  
    
   
    @IBOutlet weak var chipsPrice: UILabel!
    @IBOutlet weak var nuggetsPrice: UILabel!
    @IBOutlet weak var saladPrice: UILabel!
    
    @IBOutlet weak var totalPrice: UILabel!
   
    var amountOfNuggets = 0
    var amountOfChips = 0
    var amountOfSalad = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "finishOrder" {
//            let dest = segue.destination as! DisplayViewController
//            //dest.costumerName = NameTextZone.text!
//        }
//    }

    
    @IBAction func sliderChanged(_ sender: UISlider) {
        var totalPriceVar = 0

        if sender.tag == 1{
            amountOfNuggets = Int(sender.value)
            nuggetsPrice.text = "\(amountOfNuggets)"
        }
        if sender.tag == 2{
            amountOfChips = Int(sender.value)
            chipsPrice.text = "\(amountOfChips)"
        }
        if sender.tag == 3{
            amountOfSalad = Int(sender.value)
            saladPrice.text = "\(amountOfSalad)"
        }
        
        totalPriceVar = 3 * amountOfNuggets + 4 * amountOfChips + 5 * amountOfSalad
        totalPrice.text = "\(totalPriceVar)"
        
 
    }
    
    
}
