//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Rizky Rachmat on 29/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello iOS Developer")
                .foregroundColor(.red)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Text("Hello this is custom size text")
                .font(.system(size: 40, design: .rounded))
                .fontWeight(.black)
            
            
            Text("Your time is limited, so don't waste it with living with someone else live. Don't be trapped by dogma-whic is living with the result of other people's")
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .lineSpacing(10)
                .truncationMode(.tail)
            
            Spacer()
        }.padding()
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
