//
//  HomeViewController.swift
//  BTUIKIT
//
//  Created by Mac on 1/6/22.
//  Copyright © 2022 identifier.demo.1. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var loadingSlider: UISlider!
    @IBOutlet weak var loadingLabel: UILabel!

    @IBAction func clickLoadingSlider(_ sender: Any) {
        var valueSlider = Int(loadingSlider.value)
        loadingLabel.text = String(valueSlider)
        if valueSlider == 100 {
            let detailVC = DetailViewController()
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
