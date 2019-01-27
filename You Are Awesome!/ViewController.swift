//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Katrina Liu on 1/14/19.
//  Copyright © 2019 Katrina Liu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 4
    
    
    // Code below executes when the app's view first loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func nonRepeatingRandom(lastNumer: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumer == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer : inout AVAudioPlayer) {
        //can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            //check if sound.data is a sound file
            
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print ("ERROR: file\(soundName) couldn't be played as a sound")
            }
        }else {
            print ("ERROR: file\(soundName) didn't load")
        }
    }
    
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1{
                awesomePlayer.stop()
        }
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

       // var newIndex = -1
        //var newIndex: Int // declares but doesn't initialize newIndex
        // show a message
        index = nonRepeatingRandom(lastNumer: index, maxValue: messages.count)
        messageLable.text = messages[index]
        
        
        
        
        
        //show an image
        imageIndex = nonRepeatingRandom(lastNumer: index, maxValue: numberOfImages)
//        repeat {
//            newIndex = Int.random(in: 0..<numberOfImages)
//        } while imageIndex == newIndex
//
//        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
//        messageLable.text = messages.randomElement()!
        
        
        
        
        

//        if soundSwitch.isOn == true {
        if soundSwitch.isOn{
            //get random number ot use in our sound
            soundIndex = nonRepeatingRandom(lastNumer: soundIndex, maxValue: numberOfSounds)
            //        repeat {
            //            newIndex = Int.random(in: 0..<numberOfSounds)
            //        } while soundIndex == newIndex
            //        soundIndex = newIndex
            //        // play a sound
            let soundName = "sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        
        }
       
        
        
        
        
        
//        let randomNumber = Int.random(in: 0..<messages.count)
//        messageLable.text = messages[randomNumber]
//        messageLable.text = messages[index]
//        index = index+1
//
//        if index == messages.count-1 {
//            index = 0
//        } else{
//            index = index + 1
//        }
        
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


