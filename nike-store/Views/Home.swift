//
//  Home.swift
//  nike-store
//
//  Created by Anthony José on 18/03/21.
//

import SwiftUI

struct Home: View {
    
    @Namespace var animation
    @ObservedObject private var shoesListVM = ShoeListViewModel()
    @State public var showingLogin: Bool = false
    @State var show = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    LazyVStack(spacing: 30) {
                        ForEach(self.shoesListVM.shoes, id: \.id) { shoe in

                            CardView(shoe: shoe, animation: animation)
                        }
                    }.padding()
                }
            }
            .navigationBarTitle("Nike Store")
            .navigationBarItems(trailing: Button(action: { self.showingLogin.toggle() }) {
                Text("Logar")
            })
            .sheet(isPresented: $showingLogin){
                LoginView(showingLogin: $showingLogin)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
       
    }
}
