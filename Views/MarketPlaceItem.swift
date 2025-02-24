//
//  MarketPlaceItem.swift
//  UIChallenge
//
//  Created by Marilena Soussani on 2025-02-07.
//

import SwiftUI

var sampleMarketPlaceItem: MarketItemModel = .init(
    id: 3,
    imageUrl: "DemiKatsilogiannis",
    description: "Hi",
    price: 100
)

struct MarketPlaceItemCardView: View {
    let item : MarketItemModel
    
    var body: some View {
        VStack (alignment: .leading){
            Image(item.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 200, maxHeight: 200)
            HStack (spacing: 5){
                Text("$\(String(format: "%.2f", item.price))")
                    .font(.title3)
                
                Circle()
                    .frame(width: 3, height: 3)
                
                Text(item.description)
                    .lineLimit(1)
                    .font(.title3)
                
            }
        }
    }
}

#Preview {
    MarketPlaceItemCardView(item: sampleMarketPlaceItem)
}
