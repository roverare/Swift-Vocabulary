//
//  WordsTableViewController.swift
//  Vocabulary
//
//  Created by Rebecca Overare on 5/11/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    
    var words: [Word] = [Word(name: "Variable", definition: "Any named piece of data in your code that may change when your program runs."),
                         Word(name: "Array", definition: "Ordered collections of values."),
                         Word(name: "Set", definition: "A high-performance, unordered collection of values of any type that conforms to the Hashable protocol."),
                         Word(name: "Functions", definition: "Contained chunks of code that perform a specific task.")]
    
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  words.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = words[indexPath.row]
        cell.textLabel?.text = word.name
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                let word = words[indexPath.row]
                definitionVC.definition = word
            }
        }
    }
}

