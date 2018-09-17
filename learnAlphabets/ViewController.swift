//
//  ViewController.swift
//  learnAlphabets
//
//  Created by Lovish Dogra on 25/04/16.
//  Copyright © 2016 Lovish Dogra. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    @IBOutlet var imgHolder: UIImageView!
    @IBOutlet var alphaCharLabel: UILabel!
    @IBOutlet var alphaNameLabel: UILabel!
    
    let alphaImg = [UIImage(named:"a"),UIImage(named:"b"),UIImage(named:"c"),UIImage(named:"d")]
    let alpaChar = ["A", "B","C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    let alphaName = ["Apple", "Ball" , "Cat", "Doll", "Elephant", "Frog", "Goat", "House", "Ice", "Jug", "Kite", "Lion", "Moon", "Net", "Owl", "Parrot", "Queue", "Rat", "Snake", "Truck", "Up", "Van", "Wild", "X-Mas", "Yacht", "Zebra"]
    var i = 0
    
    func speak(){
        
        myUtterance = AVSpeechUtterance(string:alphaNameLabel.text!)
        myUtterance.rate = 0.3
        synth.speakUtterance(myUtterance)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer()
        timer = NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: #selector(ViewController.alphaLoop), userInfo: nil, repeats: true)
        
    }
    
    func alphaLoop(){
        
        i += 1
        
        imgHolder.image = alphaImg[i]
        alphaCharLabel.text = alpaChar[i]
        alphaNameLabel.text = alphaName[i]
        speak()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

