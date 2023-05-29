//
//  SwiftUIViewImage.swift
//  CoffeeShop
//
//  Created by Rizky Rachmat on 29/05/23.
//

import SwiftUI

struct SwiftUIViewImage: View {
    var body: some View {
        //        VStack {
        //            Image(systemName: "moon.haze.circle.fill")
        //                .font(.system(size: 120))
        //                .foregroundColor(.purple)
        //                .shadow(color: .gray, radius: 10, x:0, y:10)
        //
        //            Image("bg_image")
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 300)
        //                .clipShape(Circle())
        //                .overlay {
        //                    ZStack{
        //                        Circle()
        //                            .opacity(0.6)
        //
        //                        VStack{
        //                            Image(systemName: "person.badge.shield.checkmark")
        //
        //                            Text("Fruit Ninja")
        //                        }.foregroundColor(.white).font(.system(.title, design: .rounded))
        //                            .fontWeight(.bold)
        //
        //                    }
        //                }
        //        }
        
        LinearGradient(colors: [.purple, .indigo, .orange], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
    }
}

struct SwiftUIViewImage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewImage()
    }
}
