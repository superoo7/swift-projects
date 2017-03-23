//
//  PartyRock.swift
//  PartyRock
//
//  Created by Johnson Lai on 23/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!

    // create getter
    var imageURL: String {
        return _imageURL
    }
    var videoURL: String {
        return _videoURL
    }
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
