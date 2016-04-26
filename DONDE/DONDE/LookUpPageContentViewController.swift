//
//  LookUpPageContentViewController.swift
//  DONDE
//
//  Created by Rahul Shrestha on 4/25/16.
//  Copyright © 2016 SLU. All rights reserved.
//

import UIKit

class LookUpPageContentViewController: UIViewController {

    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var pageIndex: Int = 0
    var strTitle : String!
    var strPhotoName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = UIImage(named: strPhotoName)
        self.textView.text = self.strTitle
        self.textView.alpha = 0.7
        
        self.textView.font = UIFont(name: "Avenir-Light", size: 19.0)
    }

    
    @IBAction func onCloseButtonTapped(sender: AnyObject) {
        self.performSegueWithIdentifier("pageViewToSignUpView", sender: nil)
    }

 

}
