//
//  ViewController.swift
//  swift-segue-delegation-example
//
//  Created by NerdyNigel on 8/12/2014.
//  Copyright (c) 2014 NerdyNigel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PlayerEditDelegate {
    
    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var playerThreeLabel: UILabel!
    @IBOutlet weak var playerFourLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SecondViewControllerSegue" {
            let secondVC = segue.destinationViewController as SecondViewController
            secondVC.seguePlayerOneEditTextField = playerOneLabel.text
            secondVC.seguePlayerTwoEditTextField = playerTwoLabel.text
            secondVC.seguePlayerThreeEditTextField = playerThreeLabel.text
            secondVC.seguePlayerFourEditTextField = playerFourLabel.text
            
            secondVC.delegate = self
        }
    }
    
    func editPlayer(PlayerOneName: String, PlayerTwoName: String, PlayerThreeName: String, PlayerFourName: String) {
        playerOneLabel.text = PlayerOneName
        playerTwoLabel.text = PlayerTwoName
        playerThreeLabel.text = PlayerThreeName
        playerFourLabel.text = PlayerFourName
    }
}

