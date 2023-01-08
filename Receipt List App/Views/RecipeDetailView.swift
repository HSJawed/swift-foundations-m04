//
//  RecipeDetailView.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 26/12/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                //Text(recipe.name)
                
                Image(recipe.image)
                    .resizable()
                .scaledToFill()
                
                //MARK: Ingrdients
                VStack (alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    .padding(.bottom, 5.0)
                    
                    ForEach(recipe.ingredients){item in
                        Text("*" + item.name)
                            .padding(.bottom, 5.0)
                    }
                }
            
                //MARK: Divider
                Divider()
                
                //MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 5.0)
                    
                    ForEach(0..<recipe.directions.count, id:\.self){item in
                        Text(String(item+1)+" " + recipe.directions[item])
                            .padding(.bottom, 5)
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
