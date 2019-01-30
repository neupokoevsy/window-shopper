//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Sergey Neupokoev on 30/1/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeUI()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUI()
        }
        
        func customizeUI () {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2450235445)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if let placeHolderEmpty = placeholder {
                let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
       
    }

}
