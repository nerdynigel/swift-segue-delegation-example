//
//  SecondViewController.swift
//  swift-segue-delegation-example
//
//  Created by NerdyNigel on 8/12/2014.
//  Copyright (c) 2014 NerdyNigel. All rights reserved.
//

import UIKit

protocol PlayerEditDelegate {
    func editPlayerOne(PlayerOneName: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var editTextField: UITextField! = UITextField()
    var segueEditTextField:String!
    var delegate:PlayerEditDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editTextField.text = segueEditTextField
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneButtonPressed(sender: AnyObject) {
        if (delegate != nil){
            let editText:String = editTextField.text
            let delegateInformation:String = editTextField.text
            delegate!.editPlayerOne(delegateInformation)
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
