//
//  Webservice.swift
//  nike-store
//
//  Created by Anthony José on 03/03/21.
//

import Foundation

class Webservice {
    
    func getShoes(completion: @escaping ([Shoe]?) -> ()) {
        
        // address for api
        guard let url = URL(string: "https://dc0adc9b68fb.ngrok.io/shoes") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
        
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let shoes = try? JSONDecoder().decode([Shoe].self, from: data)
            
            DispatchQueue.main.async {
                completion(shoes)
            }
        
        }.resume()
    }
}
