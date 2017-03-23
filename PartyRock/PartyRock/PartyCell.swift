//
//  PartyCell.swift
//  PartyRock
//
//  Created by Johnson Lai on 23/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    @IBOutlet weak var videoPreviewImage: UIImageView!

    @IBOutlet weak var videoTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        // TODO: set image from url
        
    }

}
