//
//  ViewController.swift
//  Postcard
//
//  Created by Jeff Chong on 2014-12-29.
//  Copyright (c) 2014 Jeff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet var messageLabelRev: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        //enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail send", forState: UIControlState.Normal)
    }

}

