//
//  Receipt_List_App.swift
//  Receipt List App
//
//  Created by MD HUSSAIN SHAH JAWED on 24/12/22.
//

import SwiftUI

@main
struct Receipt_List_App: App {
    var body: some Scene {
        WindowGroup {
            RecipeTabView().environmentObject(RecipeModel())
        }
    }
}
