//
//  RecipeDetailView.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 26/12/22.
//

import SwiftUI

struct RecipeDetailView: View {
    @EnvironmentObject var model: RecipeModel
    @State var SelectedServingSize = 2
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                //Text(recipe.name)
                
                Image(recipe.image)
                    .resizable()
                .scaledToFill()
                
                //MARK: Serving Size Picker
                VStack{
                    Text("Select Your Serving Size")
                    Picker("", selection: $SelectedServingSize) {
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width:160)
                }
                
                //MARK: Recipe Title
                Text(recipe.name)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(.largeTitle)
                //MARK: Ingrdients
                VStack (alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    .padding(.bottom, 5.0)
                    
                    ForEach(recipe.ingredients){item in
                        Text("* " + RecipeModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: SelectedServingSize) + "  " + item.name.lowercased())
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
            
            //MARK : Divider
            
            Divider()
            
        }
        //.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
