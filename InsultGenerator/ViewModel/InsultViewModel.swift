//
//  InsultViewModel.swift
//  InsultGenerator
//
//  Created by Casper Daris on 28/11/2020.
//

import Foundation

class InsultViewModel {
    
    var insult: Insult?
    
    init() {
        self.getInsult()
    }
    
    func getInsult() {
        Service.getInsult(completion: { insult in
            self.insult = insult
        })
    }
    
}
