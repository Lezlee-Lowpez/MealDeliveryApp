//
//  MealsView.swift
//  Meal Delivery
//
//  Created by Lesley Lopez on 6/11/24.
//

import SwiftUI

struct MealsView: View {
    
    @State var mealPhotos: [String] = [String]()
    var dataService = DataService()
    
    var body: some View {
        
        VStack(alignment:.leading){
            
            Text("Our Meals")
                .fontWeight(.bold)
                .font(.title)
            
            GeometryReader() { proxy in
                
                LazyVGrid(columns: [GridItem(spacing:25), GridItem(spacing:25)],
                spacing: 25) {
                    
                    let itemWidth = (proxy.size.width-10)/2
                    let itemHeight = itemWidth * 0.75
                    
                    ForEach(mealPhotos, id: \.self) {photo in
                        Image(photo)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                            .frame(width: itemWidth, height: itemHeight)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .clipped()
                            
                    }
                    
                }
            }
        }
            
           
        .padding(20)
        
        .onAppear{
            mealPhotos = dataService.getPhotos()
        }
        
      
    }
}

#Preview {
    MealsView()
}
