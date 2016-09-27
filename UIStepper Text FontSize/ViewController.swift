//
//  ViewController.swift
//  UIStepper Text FontSize
//
//  Created by Aland Kawa on 9/27/16.
//  Copyright © 2016 Aland Kawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "Some texts here: vahe fibwfihbkenjfc;kLvjnelvwnvblkhawbjrwg"
        
        textView.font = UIFont(name: "Arial", size: 20)
        stepper.minimumValue = 20
        stepper.value = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stepperValue(_ sender: UIStepper) {
        
        textView.isEditable = true
        
        textView.font = UIFont(name: "Arial", size: CGFloat(sender.value))
        
        textView.isEditable = false
    }

}

