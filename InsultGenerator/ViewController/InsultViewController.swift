//
//  InsultViewController.swift
//  InsultGenerator
//
//  Created by Casper Daris on 28/11/2020.
//

import UIKit

class InsultViewController: UIViewController {
    
    @IBOutlet weak var nummerLabel: UILabel!
    @IBOutlet weak var insultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Service.getInsult() { insult in
            self.insultLabel.text = insult.insult
            self.nummerLabel.text = "#\(insult.number)"
        }
        
    }
    
    @IBAction func insultButton(_ sender: Any) {
        Service.getInsult() { insult in
            self.insultLabel.text = insult.insult
            self.nummerLabel.text = "#\(insult.number)"
        }
    }
}
