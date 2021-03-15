//
//  ShoePurchase.swift
//  nike-store
//
//  Created by Anthony José on 07/03/21.
//

import SwiftUI

struct ShoePurchase: View {
    
    let shoe: ShoeViewModel
    @State var show: Bool = false
    
    var body: some View {
        ScrollView {
            Image(shoe.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .opacity(show ? 1 : 0)
                .offset(y: show ? 0 : 20)
                .animation(Animation.easeInOut(duration: 0.8).delay(0.1))
            
            LazyVStack(alignment: .leading) {
                Text(shoe.category)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                    .opacity(show ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 0.9).delay(2.0))
                Text(shoe.title)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    .opacity(show ? 1: 0)
                    .offset(y: show ? 0 : 20)
                    .animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                Text(shoe.heading)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5.0)
                    .opacity(show ? 1: 0)
                    .offset(y: show ? 0 : 20)
                    .animation(Animation.easeInOut(duration: 0.5).delay(0.5))
                Text(shoe.description)
                    .font(.footnote)
                    .opacity(show ? 1: 0)
                    .offset(y: show ? 0 : 10)
                    .animation(Animation.easeInOut(duration: 0.5).delay(0.8))
                    
                LazyHStack {
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                       ButtonCustom(icon: "heart", text: "Favorito")
                    }.padding(1)
               
                    
                    
                    Button(action: {
                        print("Cart")
                    }) {
                        ButtonCustom(icon: "cart", text: "Carrinho")
                    }.padding(1)
          
                }.padding(.top, 10)
                .opacity(show ? 1: 0)
                .offset(y: show ? 0 : 10)
                .animation(Animation.easeInOut(duration: 0.5).delay(0.9))
            }.padding()
        }.onAppear {
            show.toggle()
        }
    }
}
