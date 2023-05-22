//
//  HeadPageViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation
import UIKit
class HeadPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var NameTextZone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NameTextZone.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startOrder" {
            let dest = segue.destination as! PizzaViewController
            dest.name = NameTextZone.text!
        }
    }


}


