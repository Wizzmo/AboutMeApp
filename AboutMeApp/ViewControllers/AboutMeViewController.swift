//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 02.12.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    // MARK: Public Properties
    var welcomeLabelValue: String!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}
