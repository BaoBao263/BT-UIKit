//
//  ActorDetailViewController.swift
//  BTUIKIT
//
//  Created by Mac on 1/12/22.
//  Copyright © 2022 identifier.demo.1. All rights reserved.
//

import UIKit

class ActorDetailViewController: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    var actor: Actor?
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarImage.getImageFromUrl(url: (actor?.image)!)
        nameLabel.text = actor!.name
        nicknameLabel.text = "Trong vai : \(actor!.nickname)"
    }

}
