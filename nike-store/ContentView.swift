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
                LazyVStack {
                    VStack(alignment: .leading) {
                        Text("Tênis de Basquete")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                            .padding([.leading, .top])
                        ScrollView(.horizontal) {
                            HStack(spacing: 0) {
                                ForEach(self.shoesListVM.shoes, id: \.id) { shoe in
                                    CardView(shoe: shoe)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Nike Store")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
