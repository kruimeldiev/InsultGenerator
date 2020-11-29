//
//  InsultViewModel.swift
//  InsultGenerator
//
//  Created by Casper Daris on 28/11/2020.
//

import Foundation

struct InsultViewModel {
    
    var insultText: String
    var number: String
    
    // Dependency Injection
    init(insult: Insult) {
        self.insultText = insult.insult
        self.number = insult.number
    }
    
}
