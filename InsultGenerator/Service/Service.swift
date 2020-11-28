//
//  Service.swift
//  InsultGenerator
//
//  Created by Casper Daris on 28/11/2020.
//

import Foundation

struct Service {
    
    static func getInsult(completion: @escaping(Insult) -> ()) {
        
        // guard-let om te checken of de API beschikbaar is
        guard let url = URL(string: Constants.API_URL) else {
            print("API niet beschikbaar")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                print(error!)
                return
            }
            
            if data != nil {
                
                do {
                    
                    let insult = try JSONDecoder().decode(Insult.self, from: data!)
                    
                    DispatchQueue.main.async {
                        completion(insult)
                    }
                } catch {
                    print("Error tijdens JSON parsing")
                }
            }
        }.resume()
    }
}
