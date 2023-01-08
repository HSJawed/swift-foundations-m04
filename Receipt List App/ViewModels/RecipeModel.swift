//
//  RecipeModel.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 24/12/22.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        //Create an instance of data service and get the data
        self.recipes  = DataService.getLocalData()
        
        
        
        
    }
    
}
