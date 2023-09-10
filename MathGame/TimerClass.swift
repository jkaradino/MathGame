//
//  TimerClass.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 10.09.23.
//

import Foundation
import UIKit


class ViewController: UIViewController {
    let colors: [UIColor] = [
        .systemBlue,
        .systemGreen,
        .systemRed,
        .systemPink,
        .systemOrange,
        .systemYellow]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createTimer()
    }
    
    
    func createTimer() {
        var seconds: Int = 0
        var mseconds: Int = 0
        var minutes: Int = 0
        var timer: Timer?
        
        timerIsPaused = false
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { tempTimer in
            // Logic for timer counting up
            if mseconds == 999 {
                mseconds = 0
                if seconds == 59 {
                    seconds = 0
                    minutes = minutes + 1
                } else {
                    seconds = seconds + 1
                }
            } else {
                mseconds = seconds + 1
            }
        }
    }
}
