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
        
        if items.count > 0 {items.removeAll() }
        
        for data in load(file: "MapLocations") {
            items.append(RestaurantItem(dict: data))
        }
        completion(items)
    }
    
    
    func currentRegion(latDelta: CLLocationDegrees, longDelta: CLLocationDegrees) -> MKCoordinateRegion {
        
        guard let item = items.first else {
            return MKCoordinateRegion()
        }
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        return MKCoordinateRegion(center: item.coordinate, span: span)
        
    }
    
}


























