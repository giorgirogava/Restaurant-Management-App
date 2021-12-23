//
//  Device.swift
//  RogavaLetsEat
//
//  Created by IMAC on 22.12.21.
//

import UIKit

enum Device {
    
    static var isPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    static var isPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
}
