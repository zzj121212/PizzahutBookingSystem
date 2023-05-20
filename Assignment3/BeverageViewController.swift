//
//  PastaViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation

import UIKit

class BeverageViewController: UIViewController {
    var beverageDictionary = ["Coke Zero": 3.0,"Spite":3.5,"Fanta":3.5  ]
    var amount = 0.0
    var totalPrice = 0.0

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
