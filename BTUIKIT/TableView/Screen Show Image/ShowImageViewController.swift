//
//  ShowImageViewController.swift
//  BTUIKIT
//
//  Created by Mac on 1/7/22.
//  Copyright © 2022 identifier.demo.1. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    
    var name: String = ""
    var image: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage.image = image
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"backGround")!)

    }
}
