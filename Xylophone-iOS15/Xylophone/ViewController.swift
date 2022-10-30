//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func cKeyPress(_ sender: UIButton) {
        print(sender.currentTitle!)
        var x = sender.currentTitle!
            playSound(name: x ,format: "wav")
        
       
    }
    
//    @IBAction func dKeyPressed(_ sender: UIButton) {
//        print("D got pressed")
//        playSound(name: "D",format: "wav")
//    }
//
//    @IBAction func eKeyPress(_ sender: UIButton) {
//        print("E got pressed")
//        playSound(name: "E",format: "wav")
//    }
//
//    @IBAction func fKeyPress(_ sender: UIButton) {
//        print("F got pressed")
//        playSound(name: "F",format: "wav")
//    }
//
//
//    @IBAction func gKeyPress(_ sender: UIButton) {
//        print("G got pressed")
//        playSound(name: "G",format: "wav")
//    }
//
//    @IBAction func aKeyPress(_ sender: UIButton) {
//        print("A got pressed")
//        playSound(name: "A",format: "wav")
//    }
//
//    @IBAction func bKeyPress(_ sender: UIButton) {
//        print("B got pressed")
//        playSound(name: "B",format: "wav")
//    }
    
    
    
    func playSound(name:String, format:String){
        
        let url = Bundle.main.url(forResource: name, withExtension:format)
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    

}

