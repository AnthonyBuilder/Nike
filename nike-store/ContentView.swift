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
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.shoesListVM.shoes, id: \.id) { shoe in
                        CardView(shoe: shoe)
                    }
                }
            }.navigationTitle("Nike Store")
        }
    }
}

extension AnyTransition {
  static var customTransition: AnyTransition {
    let transition = AnyTransition.move(edge: .top)
      .combined(with: .scale(scale: 0.2, anchor: .topTrailing))
      .combined(with: .opacity)
    return transition
  }
}
