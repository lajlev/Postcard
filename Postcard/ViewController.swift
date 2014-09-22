//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Lajlev on 12/09/14.
//  Copyright (c) 2014 lajlv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var messageLabel: UILabel!
    
  @IBOutlet weak var enterNameTextField: UITextField!
    
  @IBOutlet weak var enterMessageTextField: UITextField!
    
  @IBOutlet weak var mailButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sendMailButtonPressed(sender: UIButton) {
	   // Code will evaluate when we press the button
  	 messageLabel.hidden = false
  	 messageLabel.text = enterMessageTextField.text
  	 enterMessageTextField.text = ""
		 enterMessageTextField.resignFirstResponder()
  	 messageLabel.textColor = UIColor.redColor()
  	 mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
  }


}

