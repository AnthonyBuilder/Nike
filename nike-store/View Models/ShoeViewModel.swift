//
//  ShoeViewModel.swift
//  nike-store
//
//  Created by Anthony José on 03/03/21.
//

import Foundation

class ShoeListViewModel: ObservableObject {
    
    @Published var shoes = [ShoeViewModel]()
    
    init() {
        Webservice().getShoes { shoes in
            if let shoes = shoes {
                self.shoes = shoes.map(ShoeViewModel.init)
            }
        }
    }
}

struct ShoeViewModel {
    
    var shoe: Shoe
    
    init(shoe: Shoe) {
        self.shoe = shoe
    }
    
    var id: Int {
        return self.shoe.id
    }
    
    var title: String {
        return self.shoe.title
    }
    
    var image: String {
        return self.shoe.image
    }
    
    var category: String {
        return self.shoe.category
    }
    
    var heading: String {
        return self.shoe.heading
    }
}
