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
    var index = 0
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day!",
                        "You are da bomb!",
                        "Hey, fabulous!",
                        "You are tremendous!",
                        "You've got the deesign skills of Jony Ive!",
                        "I can't wait to download your app!"]
        messageLable.text = messages[index]
        index = index+1
        
        if index == messages.count{
            index=0
            
        }
        
//        let message1 = "You Are Fantastic!!!"
//        let message2 = "You Are Great"
//        let message3 = "You Are Amazing"
//
//        if messageLable.text == message1 {
//            messageLable.text = message2
//        } else if messageLable.text == message2{
//            messageLable.text = message3
//        } else {
//            messageLable.text = message1
//        }
       
        
    }
   
}

