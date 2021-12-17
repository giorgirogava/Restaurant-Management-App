//
//  MapDataManager.swift
//  RogavaLetsEat
//
//  Created by IMAC on 14.12.21.
//

import Foundation
import MapKit


class MapDataManager: DataManager {
    
    fileprivate var items: [RestaurantItem] = []
    
    var annotations: [RestaurantItem] {
        return items
    }
    
    func fetch (completion: (_ annotation: [RestaurantItem]) -> ()) {
        
        let manager = RestaurantDataManager()
        
        manager.fetch(by: "Chicago", completionHandler: {
            (items) in self.items = items
            completion(items)
        })
        
        
    }
    
    
    func currentRegion(latDelta: CLLocationDegrees, longDelta: CLLocationDegrees) -> MKCoordinateRegion {
        
        guard let item = items.first else {
            return MKCoordinateRegion()
        }
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        return MKCoordinateRegion(center: item.coordinate, span: span)
        
    }
    
}


























