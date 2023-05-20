//
//  DisplayViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class DisplayViewController: UIViewController {
    var costumerName: String = ""
    var addonDictionary = [String : Double]()
    var beverageDictionary = [String : Double]()
    var pizzaDictionary = [String : Double]()
    var totalPriceVar: Double = 0.0



    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var amount10: UILabel!
    @IBOutlet weak var amount9: UILabel!
    @IBOutlet weak var amount8: UILabel!
    @IBOutlet weak var amount7: UILabel!
    @IBOutlet weak var amount6: UILabel!
    @IBOutlet weak var amount5: UILabel!
    @IBOutlet weak var amount3: UILabel!
    @IBOutlet weak var amount2: UILabel!
    @IBOutlet weak var amount1: UILabel!
    @IBOutlet weak var PizzaName3: UILabel!
    @IBOutlet weak var PizzaName2: UILabel!
    @IBOutlet weak var PizzaName1: UILabel!
    @IBOutlet weak var Name: UILabel!
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


}
