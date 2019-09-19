//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Alex Thompson on 9/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(addWord: "Office Space it", definition: "To beat the crap out of something, like they do to the copy machine in the movie Office Space."),
        VocabularyWord(addWord: "Mcdonald's Internet", definition: "Used to describe a poor internet connection, usually among players of competitive online games."),
        VocabularyWord(addWord: "Programming", definition: "The art of turning caffeine into Error Messages."),
        VocabularyWord(addWord: "Internet", definition: "A virtual place where everyone feels they have the right to force their opinions, offend, and engage in verbal barbarism between other users")
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
        
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.addWord
      return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            let destination = segue.destination as? DefinitionViewController
            //guard let destination == segue.destination as? DefinitionViewController else { return }
            
            
           guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
            destination?.vocabWord = vocabWords[indexPath.row]
    }

    
        
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
