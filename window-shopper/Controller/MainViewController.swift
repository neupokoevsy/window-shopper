//
//  ViewController.swift
//  window-shopper
//
//  Created by Sergey Neupokoev on 30/1/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true

        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calculateButton
        priceTxt.inputAccessoryView = calculateButton
        
    }
    
    @objc func calculate (){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculator(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

