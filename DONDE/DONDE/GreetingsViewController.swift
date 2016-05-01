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
 
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    self.fullNameTextField.shake(50,
            withDelta: 5.0
        )
    }


}
