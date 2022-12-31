//
//  RecipeFeaturedView.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 31/12/22.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
  // @ObservedObject  var model = RecipeModel()
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
