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
    // everytime we create new cell, it will run updateUI
    func updateUI(partyRock: PartyRock) {
        // update title
        videoTitle.text = partyRock.videoTitle
        
        // set image from url
        
        let url = URL(string: partyRock.imageURL)!
        // create new thread on background, wont stop app from updating
        // download the image on background
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                // put image into image view
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
            }
        }
    }

}
