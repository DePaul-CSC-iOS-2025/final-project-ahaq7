//
//  QuoteTab1.swift
//  AwakenMe
//
//  Created by ForTheImam on 3/6/25.
//

import UIKit



class QuoteTab1: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var randomInt = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        randomInt = Int.random(in: 0...50)
        quoteLabel.text = quotesList[randomInt].quote
        authorLabel.text = "- " + quotesList[randomInt].author
        
        
    }
    

    @IBAction func nextBtn(_ sender: UIButton) {

        randomInt = Int.random(in: 0...50)
        quoteLabel.text = quotesList[randomInt].quote
        authorLabel.text = "- " + quotesList[randomInt].author
    }
    
    @IBAction func quoteSaveBtn(_ sender: UIButton) {
        favoriteQuoteList.append(quotesList[randomInt])
    }
}
