//
//  ShoePurchase.swift
//  nike-store
//
//  Created by Anthony José on 07/03/21.
//

import SwiftUI

struct ShoePurchase: View {
    
    let shoe: ShoeViewModel

    var body: some View {
        ScrollView {
            Image(shoe.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
    
            LazyVStack(alignment: .leading) {
                Text(shoe.category)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                Text(shoe.title)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                Text(shoe.heading)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5.0)
                Text(shoe.description)
                    .font(.footnote)
                    
                LazyVStack(alignment: .trailing) {
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                       ButtonCustom(icon: "heart", text: "Favorito")
                    }.padding(1)
                    
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        ButtonCustom(icon: "cart", text: "Adicionar ao Carrinho")
                    }.padding(1)
                }.padding(.top, 10)
            }.padding()
        }
    }
}
