//
//  ViewController.swift
//  CelciusConveter
//
//  Created by Vivek Reddy on 19/06/20.
//  Copyright © 2020 Vivek Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterValue: UITextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var conversionLbl: UILabel!
    
    var countButtonClicks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertBtn(_ sender: Any)
    {
        print("convert completed")
        // if let is used when we need to check if any condition || flieds exists or not
        // to check wheather the check is present in the text or not
        if let result = enterValue.text
        {
            if(result == "")
            {
                return
            }
            else
            {
                if let num = Double(result)
                {
                    let output = num * (9/5) + 32
                    resultLbl.text = String(output)
                    updateCountByOne()
                }
            }
        }
    }
    
    func updateCountByOne()
    {
        countButtonClicks += 1
        conversionLbl.text = String(countButtonClicks) + " conversions"
        
        //print(conversionLbl.text = String(countButtonClicks)) // Mistake to realise
    }
}

