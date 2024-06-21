//
//  DataService.swift
//  Meal Delivery
//
//  Created by Lesley Lopez on 6/11/24.
//

import Foundation

struct DataService{
    
    func getData() -> [MealPhotos] {
        
        return [MealPhotos(name: "1"), MealPhotos(name: "2"), MealPhotos(name: "3"), MealPhotos(name: "4"), MealPhotos(name: "5"), MealPhotos(name: "6")]
    }
    
    func getPhotos() -> [String] {
        
        return ["1", "2", "3", "4", "5", "6"]
    }
    
}
