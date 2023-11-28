//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 28.11.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeLabelValue
    }
}
