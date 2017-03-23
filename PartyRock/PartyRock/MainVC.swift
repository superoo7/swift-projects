//
//  ViewController.swift
//  PartyRock
//
//  Created by Johnson Lai on 23/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

/*
 Party Rock (Model) - provide images url, video url and video title
 Party Cell (View) - Table view
 */


import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/0/04/Niall_Horan_-_This_Town_single_cover.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/91_4Ib0frb8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "This Town")
        let p2 = PartyRock(imageURL: "https://images.genius.com/b987a0d3e07d6f10d3c434bfb69a651f.1000x1000x1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JGwWNGJdvx8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Shape of You")
        let p3 = PartyRock(imageURL: "https://1.bp.blogspot.com/-IRDdo01CLIU/WLC1MuqDLqI/AAAAAAAABOI/508utRlJVswk7rY2Pi9F1rclKmfkrjHkwCLcB/s400/ed-sheeran-how-would-you-feel.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wY473jAptyw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "How would you feel")
        let p4 = PartyRock(imageURL: "https://lastfm-img2.akamaized.net/i/u/300x300/301eec2fd8d14ebe909f40084aacbedd.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kVpv8-5XWOI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hey Soul Sister")
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        

        // setting both to know to call both into function
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                    destination.partyRock = party
            }
        }
    }
}

