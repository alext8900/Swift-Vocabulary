//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Alex Thompson on 9/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    @IBOutlet weak var vacabLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        vacabLabel.text = vocabWord.addWord
        definitionTextView.text = vocabWord.definition
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
