//
//  ViewController.swift
//  UITextField Delegate Test
//
//  Created by D7703_15 on 2018. 3. 22..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameText.placeholder = "입력을 하세요~~~"
        nameText.clearButtonMode = UITextFieldViewMode.whileEditing
        nameText.borderStyle = UITextBorderStyle.line
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func nameButton(_ sender: UIButton) {
        helloLabel.text = "Hello" + " \(nameText.text!)"
        nameText.text = ""
        //키패드를 내림
        nameText.resignFirstResponder()
    }
}

