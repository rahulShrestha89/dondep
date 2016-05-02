//
//  GreetingsViewController.swift
//  DONDE
//
//  Created by Rahul Shrestha on 5/1/16.
//  Copyright © 2016 SLU. All rights reserved.
//

import UIKit
import UITextField_Shake

class GreetingsViewController: UIViewController {
    
    @IBOutlet weak var greetingsTextView: UILabel!
    

    
    @IBOutlet weak var trackLabel: UILabel!
    
    @IBOutlet weak var snapLabel: UILabel!
    
    @IBOutlet weak var shareLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1.5, delay: 3.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.greetingsTextView.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.greetingsTextView.text = "Let's get Started!"
                
                // Fade in
                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                    self.greetingsTextView.alpha = 1.0
                    }, completion: nil)
        })
        
        UIView.animateWithDuration(1.5, delay: 4.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.trackLabel.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.trackLabel.text = "Track"
                
                // Fade in
                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                    self.trackLabel.alpha = 1.0
                    }, completion: nil)
        })
        
        UIView.animateWithDuration(1.5, delay: 5.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.snapLabel.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.snapLabel.text = ", Snap"
                
                // Fade in
                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                    self.snapLabel.alpha = 1.0
                    }, completion: nil)
        })
        
        UIView.animateWithDuration(1.5, delay: 6.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.shareLabel.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.shareLabel.text = ", Share!"
                
                // Fade in
                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                    self.shareLabel.alpha = 1.0
                    }, completion: nil)
        })
    }
    

    
}
