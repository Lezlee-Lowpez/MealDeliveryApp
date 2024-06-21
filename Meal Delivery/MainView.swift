//
//  ContentView.swift
//  Meal Delivery
//
//  Created by Lesley Lopez on 6/11/24.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {


            MealsView()
                .tabItem {
                    Image(systemName: "fork.knife.circle.fill")
                    Text("Meals")
                }
                        
            CompanyView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About")
                }
        }
    }
}

#Preview {
    MainView()
}

