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

    @IBOutlet weak var editPlayerOneTextField: UITextField! = UITextField()
    
    @IBOutlet weak var editPlayerTwoTextField: UITextField! = UITextField()
    
    @IBOutlet weak var editPlayerThreeTextField: UITextField! = UITextField()
    
    @IBOutlet weak var editPlayerFourTextField: UITextField! = UITextField()
    
    var seguePlayerOneEditTextField:String!
    var seguePlayerTwoEditTextField:String!
    var seguePlayerThreeEditTextField:String!
    var seguePlayerFourEditTextField:String!
    var delegate:PlayerEditDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editPlayerOneTextField.text = seguePlayerOneEditTextField
        editPlayerTwoTextField.text = seguePlayerTwoEditTextField
        editPlayerThreeTextField.text = seguePlayerThreeEditTextField
        editPlayerFourTextField.text = seguePlayerFourEditTextField
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneButtonPressed(sender: AnyObject) {
        if (delegate != nil){
            let editText:String = editPlayerOneTextField.text
            let delegateInformation:String = editPlayerOneTextField.text
            delegate!.editPlayerOne(delegateInformation)
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
