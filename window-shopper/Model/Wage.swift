//
//  Wage.swift
//  window-shopper
//
//  Created by Sergey Neupokoev on 2/2/19.
//  Copyright © 2019 Sergey Neupokoev. All rights reserved.
//

import Foundation

class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
