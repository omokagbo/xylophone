//
//  ViewController.swift
//  Xylophone
//
// Created by omokagbo on 24/04/2021.

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "C", ofType: "wav")
        let url = URL(fileURLWithPath: path ?? "")
            
        do {
           player = try AVAudioPlayer(contentsOf: url)
           player?.play()
        } catch let error {
           print(error.localizedDescription)
        }
    }
    
}

