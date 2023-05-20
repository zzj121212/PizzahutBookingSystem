//
//  HeadPageViewController.swift
//  Assignment3
//
//  Created by apple on 8/5/2023.
//

import Foundation
import UIKit
class HeadPageViewController: UIViewController {

    @IBOutlet weak var NameTextZone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startOrder" {
            let dest = segue.destination as! DisplayViewController
            dest.costumerName = NameTextZone.text!
        }
    }


}


