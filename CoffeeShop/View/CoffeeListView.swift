//
//  CoffeeListView.swift
//  CoffeeShop
//
//  Created by Rizky Rachmat on 29/05/23.
//

import SwiftUI

struct CoffeeListView: View {
    // MARK: - PROPERTIES
    
    @State
    private var searchText: String = ""
    
    private var coffeeSearchResult: [CoffeeShopModel] {
        let result = CoffeeShopModel.CoffeeshopProvider.all()
        if searchText.isEmpty {
            return result
        } else {
            return result.filter { index in
                index.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    private var suggestedResult: [CoffeeShopModel] {
        if searchText.isEmpty {
            return []
        } else {
            return coffeeSearchResult
        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List(coffeeSearchResult) { result in
                NavigationLink {
                    CoffeeDetailView(coffeeDetail: result)
                } label: {
                    Text("\(result.name)\n\(result.location)")
                        .font(.title2)
                        .padding(6)
                }
            }.navigationTitle("CoffeeShop")
                .searchable(
                    text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "What coffee's that you are looking for"
                    
                ) {
                    ForEach(suggestedResult) { result in
                        Text("Looking for \(result.name)?").searchCompletion(result.name)
                    }
                }
        }
    }
}

struct CoffeeListView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeListView()
    }
}
