//
//  FilterManager.swift
//  RogavaLetsEat
//
//  Created by IMAC on 19.12.21.
//

import Foundation

class FilterManager: DataManager {
    
    func fetch(completionHandler: (_ items:[FilterItem]) -> Void ){
        
        var items:[FilterItem] = []
        
        for data in load(file: "FilterData") {
            
            items.append(FilterItem(dict: data))
        }
        completionHandler(items)
    }
    
}

