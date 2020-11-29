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
    
    var insultVM = InsultViewModel(insult: Insult(number: "0", insult: "Dit is een test insult.")) {
        didSet {
            self.nummerLabel.text = "# \(insultVM.number):"
            self.insultLabel.text = insultVM.insultText
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fetchInsult()
        
        self.nummerLabel.text = "# \(insultVM.number):"
        self.insultLabel.text = insultVM.insultText
    }
    
    @IBAction func insultButton(_ sender: Any) {
        self.fetchInsult()
    }
    
    func fetchInsult() {
        
        Service.getInsult() { insult in
            self.insultVM.insultText = insult.insult
            self.insultVM.number = insult.number
        }
    }
}
