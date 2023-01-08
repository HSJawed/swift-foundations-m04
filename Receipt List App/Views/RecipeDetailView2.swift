//
//  RecipeDetailView2.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 26/12/22.
//

import SwiftUI

struct RecipeDetailView2: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            
            VStack(alignment: .leading) {
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredients

                
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5.0)
                    
                    ForEach(recipe.ingredients){
                        item in
                        
                        Text("•"+item.name)
                            .padding(.bottom, 1)
                    }
                }
                .padding(.horizontal)
                
                //MARK: Divider
                Divider()
                
                //MARK: Recipe Directions
                
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5.0)
                }
                
                
                
                ForEach(0..<recipe.directions.count-1, id:\.self){
                    item in
                    Text(String(item+1) + " " + recipe.directions[item])
                }
            }.padding(.horizontal)
                
                
            }
        .navigationBarTitle(recipe.name)
            
            
        
        
    }
}

struct RecipeDetailView2_Previews: PreviewProvider {
    static var previews: some View {
        //Set up a dummy recipe and pass it
        
        let model = RecipeModel()
        RecipeDetailView2(recipe: model.recipes[0])
    }
}
