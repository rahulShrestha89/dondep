//
//  SignInViewController.swift
//  DONDE
//
//  Created by Rahul Shrestha on 4/18/16.
//  Copyright © 2016 SLU. All rights reserved.
//

import UIKit
import DigitsKit
import Crashlytics


class SignInViewController: UIViewController {

    @IBOutlet weak var lookAroundButton: UIButton!
    @IBOutlet weak var connectWithPhoneButton: UIButton!
    
    @IBAction func onConnectWithPhoneButtonTapped(sender: AnyObject) {
        
        // Create a Digits appearance with native colors.
        let configuration = DGTAuthenticationConfiguration(accountFields: .DefaultOptionMask)
        
        configuration.appearance = DGTAppearance()
        configuration.appearance.backgroundColor = UIColor.dondeWhiteColor()
        configuration.appearance.accentColor = UIColor.dondeGreenColor()
        
        // Start the Digits authentication flow with the custom appearance.
        Digits.sharedInstance().authenticateWithViewController(nil, configuration:configuration) { (session, error) in
            if session != nil {
                
                // Tie crashes to a Digits user ID in Crashlytics.
                Crashlytics.sharedInstance().setUserIdentifier(session.userID)
                
                
            } else {
               
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decorateButton(connectWithPhoneButton, color: UIColor.dondeGreenColor())
        decorateButton(lookAroundButton, color: UIColor.dondeBlueColor())

    }
    
    @IBAction func onLookAroundButtonTapped(sender: AnyObject) {
        self.performSegueWithIdentifier("lookUpPageviewSegue", sender: self)
    }
    // MARK: Utilities
    
    private func decorateButton(button: UIButton, color: UIColor) {
        // Draw the border around a button.
        button.layer.masksToBounds = false
        button.layer.borderColor = color.CGColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 6
        button.backgroundColor = color
    }

}

