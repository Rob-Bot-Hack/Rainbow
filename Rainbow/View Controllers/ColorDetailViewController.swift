//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Robert on 1/28/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var cellColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateviews()

        // Do any additional setup after loading the view.
    }
    
    func updateviews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }


}
