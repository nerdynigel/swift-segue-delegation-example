//
//  SecondViewController.swift
//  swift-segue-delegation-example
//
//  Created by NerdyNigel on 8/12/2014.
//  Copyright (c) 2014 NerdyNigel. All rights reserved.
//

import UIKit

protocol PlayerEditDelegate {
    func editPlayer(PlayerOneName: String, PlayerTwoName: String, PlayerThreeName: String, PlayerFourName: String)
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
            }

    @IBAction func doneButtonPressed(sender: AnyObject) {
        if (delegate != nil){
            
            let playerOneDelegateInformation:String = editPlayerOneTextField.text
            let playerTwoDelegateInformation:String = editPlayerTwoTextField.text
            let playerThreeDelegateInformation:String = editPlayerThreeTextField.text
            let playerFourDelegateInformation:String = editPlayerFourTextField.text
            
            delegate!.editPlayer(playerOneDelegateInformation, PlayerTwoName: playerTwoDelegateInformation, PlayerThreeName: playerThreeDelegateInformation, PlayerFourName: playerFourDelegateInformation)
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
