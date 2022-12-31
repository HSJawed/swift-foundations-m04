//
//  DataService.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 24/12/22.
//

import Foundation


class DataService {
    
    static func getLocalData() ->[Recipe] {
        
        // Parse JSON Local file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if path string is not nill
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            
            // Decode the data with a JSON Decoder
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                    
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                    
                    
                }
                return recipeData
                
                // Add the unique ids
                // Return the recipes
                
            }
            catch {
                print(error)
            }
        }
        
        catch {
            print(error)
        }
        
        return[Recipe]()
        
    }
    
}
