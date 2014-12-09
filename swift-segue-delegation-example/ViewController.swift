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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SecondViewControllerSegue" {
            println("Entered Segue to SecondViewController")
            let secondVC = segue.destinationViewController as SecondViewController
            secondVC.segueEditTextField = playerOneLabel.text
            secondVC.delegate = self
        }
    }
    
    func editPlayerOne(PlayerOneName: String) {
        playerOneLabel.text = PlayerOneName
    }
}

