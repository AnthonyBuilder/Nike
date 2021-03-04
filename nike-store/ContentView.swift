//
//  ContentView.swift
//  nike-store
//
//  Created by Anthony José on 17/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var shoesListVM = ShoeListViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 0) {
                    
                    ForEach(self.shoesListVM.shoes, id: \.id) { shoe in
                        CardView(title: shoe.title, image: shoe.image, category: shoe.category, heading: shoe.heading, price: "100,00")
                    }
                }
            }
            .navigationTitle("Nike")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
