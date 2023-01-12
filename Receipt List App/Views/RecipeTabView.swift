//
//  RecipeTabView.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 27/12/22.
//

import SwiftUI

struct RecipeTabView: View {

     var body: some View {

        TabView {
            
            RecipeFeaturedView()
            .tabItem {
               //
                VStack{
                    Image(systemName: "star")
                    Text("Featured")
                }
            }
            
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())

    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
