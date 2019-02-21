//
//  ViewController.swift
//  TimeyConvertey
//
//  Created by Student on 2/5/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var yearTF: UITextField!
    

    @IBOutlet weak var monthsLBL: UILabel!
    

    @IBOutlet weak var daysLBL: UILabel!
    

    @IBOutlet weak var secondsLBL: UILabel!
    


    @IBAction func convertIt(_ sender: Any) {  //typing errors must      refactored, not just corrected
        
        let years = Int(yearTF.text!)!
        let months = years * 12
        let days = years * 365
        let seconds = days * 24 * 60 * 60
        monthsLBL.text = String(months)
        daysLBL.text = String(days)
        secondsLBL.text = String(seconds)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

