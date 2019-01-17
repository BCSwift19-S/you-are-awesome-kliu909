//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Katrina Liu on 1/14/19.
//  Copyright © 2019 Katrina Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLable.text = "You Are Awesome!"
        
    }
}

