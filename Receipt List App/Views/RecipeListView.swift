//
//  ContentView.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 24/12/22.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the View Model
    @ObservedObject var model = RecipeModel()
    
    
    var body: some View {
        
        NavigationView {
            List(model.recieps) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe: r),
                    label: {
                    
                    HStack (spacing : 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center).clipped().cornerRadius(5)
                        Text(r.name)
                    }
                    
                })
                                

               
                
            }
            .navigationBarTitle("All Items")
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
