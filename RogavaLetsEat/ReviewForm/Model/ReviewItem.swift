//
//  ReviewItem.swift
//  RogavaLetsEat
//
//  Created by IMAC on 20.12.21.
//


import UIKit

struct ReviewItem {
    
    var rating: Double?
    
    var name: String?
    
    var title: String?
    
    var customerReview: String?
    
    var date: Date?
    
    var restaurantID: Int?
    
    var uuid = UUID().uuidString
    
}



extension ReviewItem {
    
    init(review: Review) {
        
        if let reviewDate = review.date {
            self.date = reviewDate
        }
        
        self.customerReview = review.customerReview
        
        self.name = review.name
        
        self.title = review.title
        
        self.restaurantID = Int(review.restaurantID)
        
        self.rating = review.rating
        
        if let uuid = review.uuid {
            self.uuid = uuid
        }
        
    }
}
