//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 28.11.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: Public Properties
    var welcomeLabelValue: String!
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeLabelValue
    }
}
