//
//  RoundedImageView.swift
//  MVC
//
//  Created by Johnson Lai on 18/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 20.0
        self.clipsToBounds = true
    }

}
