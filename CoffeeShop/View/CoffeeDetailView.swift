//
//  CoffeeDetailView.swift
//  CoffeeShop
//
//  Created by Rizky Rachmat on 29/05/23.
//

import SwiftUI

struct CoffeeDetailView: View {
    // MARK: - PROPERTIES
    let coffeeDetail: CoffeeShopModel
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack(alignment: .center) {
                Text(coffeeDetail.name)
                    .font(.system(size: 20))
                
                Text(coffeeDetail.location)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                
                Text(coffeeDetail.review)
                    .font(.system(size: 18, design: .rounded))
                    .lineSpacing(6)
                    .multilineTextAlignment(.center)
                
            }.padding()
        }
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetailView(coffeeDetail: CoffeeShopModel(image: "bojaeatery", name: "Boja Eatery", location: "Jl. Sumatera No. 21, Kota Bandung", review: "The food is delicious, cooked just right.  Friendly service.  Cozy atmosphere with floral decorations.  There is a ~robot~ that sends the dish.  Prices are reasonable for a restaurant of its class"))
    }
}
