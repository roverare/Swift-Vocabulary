//
//  DefinitionViewController.swift
//  Vocabulary
//
//  Created by Rebecca Overare on 5/11/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    var definition: Word?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    
    func updateViews() {
        
        if let definition = definition  {
            
            self.label.text = definition.name
            self.textView.text = definition.definition
            
        }
    }
    
}
