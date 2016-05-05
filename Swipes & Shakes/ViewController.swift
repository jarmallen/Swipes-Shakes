//
//  ViewController.swift
//  Swipes & Shakes
//
//  Created by Jared Allen on 3/29/16.
//  Copyright © 2016 Jared Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Swipes
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
    }
    
    func swiped(gesture: UISwipeGestureRecognizer){
        
        if let swipeGesture: UISwipeGestureRecognizer = gesture {
            
            switch swipeGesture.direction {
                case UISwipeGestureRecognizerDirection.Right: print("Swiped Right!")
                case UISwipeGestureRecognizerDirection.Up: print("Swiped Up!")
                default: break
            }
        }
    }
    
    // Shakes
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
            
            print("Device was shaken!")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

