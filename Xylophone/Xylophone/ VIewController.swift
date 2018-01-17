//
//  ViewController.swift
//  Xylophone

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var audioPlayer : AVAudioPlayer!
    let sounds = ["note1", "note2", "note3","note4", "note5", "note6", "note7"]
     var clickedSound : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        clickedSound = sounds[(sender.tag)-1]
        
        playSound(key: clickedSound)
    }
    
    func playSound(key : String){
        
        let soundUrl = Bundle.main.url(forResource: key, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}

