//
//  Details.swift
//  nike-store
//
//  Created by Anthony José on 07/03/21.
//

import SwiftUI

/// Details about the shoes
struct ShoeDetailsView: View {
    
    
    @Binding var shoe: ShoeViewModel
    @State var show: Bool = false
    
    var animation: Namespace.ID
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                
                Image(shoe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(show ? 1 : 0)
                    .animation(.spring())
                    .offset(y: show ? -20 : 0)
                
         
                VStack(alignment: .leading) {
                    Text(shoe.category)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                    .opacity(show ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 0.9).delay(1.0))
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
                    }.padding(.bottom)
                VStack (alignment: .leading, spacing: 8) {
                    Text("Oferta Exclusiva")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    Text("Frame + Lens R$ 35,99(são 50% de Desconto!)")
                        .foregroundColor(.gray)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                .background(Color("cardBackground"))
                .cornerRadius(15)
                .opacity(show ? 1: 0)
                .offset(y: show ? -10 : 0)
                .animation(Animation.easeOut(duration: 0.7).delay(0.9))
                    
                HStack {
                    Button(action: {
                        print("Add Favorito")
                    }) {
                       mButton(icon: "heart", text: "Favorito")
                    }.padding(1)
            
                    Button(action: {
                        print("Add Cart")
                    }) {
                        mButton(icon: "cart", text: "Carrinho")
                    }.padding(1)
          
                }
                .opacity(show ? 1 : 0)
              
            }.padding()
        }.onAppear {
            withAnimation(Animation.spring().delay(0.75)) {
                show.toggle()
            }
        }
    }
}
