//
//  Actor.swift
//  BTUIKIT
//
//  Created by Mac on 1/11/22.
//  Copyright © 2022 identifier.demo.1. All rights reserved.
//

import Foundation

class Actor {
    var id: Int
    var name: String
    var image: String
    var nickname : String
    
    init(id: Int,name: String, image: String, nickname: String) {
        self.id = id
        self.name = name        
        self.image = image
        self.nickname = nickname
    }
}
