//
//  MarketplaceView.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

let sampleMarketPlaceCatalogue: [MarketItemModel] = [
    .init(id: 1, imageUrl: "IMG_4856", description: "So Kate", price: 1199.99),
    .init(id: 2, imageUrl: "IMG_4855", description: "Rhode Case", price: 29.99),
    .init(id: 3, imageUrl: "IMG_4855", description: "Rhode Case", price: 29.99),
    .init(id: 5, imageUrl: "IMG_4856", description: "So Kate", price: 1119.99),
    .init(id: 6, imageUrl: "IMG_4856", description: "So Kate", price: 1119.99),
    .init(id: 7, imageUrl: "IMG_4855", description: "Rhode Case", price: 29.99),
    .init(id: 8, imageUrl: "IMG_4855", description: "Rhode Case", price: 29.99),
    .init(id: 9, imageUrl: "IMG_4856", description: "So Kate", price: 1119.99),
    sampleMarketPlaceItem
]

struct MarketplaceView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Marketplace")
                        .font(.title.bold())
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "person.fill")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                    
                }.padding(.horizontal)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach (sampleMarketPlaceCatalogue, id: \.id) { item in
                        MarketPlaceItemCardView(item: item)
                    }
                }
            }
        }
    }
}

#Preview {
    MarketplaceView()
}
