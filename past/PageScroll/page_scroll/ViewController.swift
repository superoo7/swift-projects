//
//  ViewController.swift
//  page_scroll
//
//  Created by Johnson Lai on 17/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//
// var test = "test"

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    // def pages of the app
    let MAX_PAGE = 2
    let MIN_PAGE = 0
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            // The view start from 0.0 in x, making it full screen
            var newX: CGFloat = 0.0
            
            // set y (vertical) at middle, set horizontal based on 3 scales
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        self.images[self.currentPage].transform = CGAffineTransform.init(scaleX: 1.4, y: 1.4)
        
        scrollView.clipsToBounds = false
        
        // Make it scrollable
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

    @IBAction func detectSwipe (_ sender: UISwipeGestureRecognizer) {
        if (currentPage < MAX_PAGE && sender.direction == UISwipeGestureRecognizerDirection.left) {
            moveScrollView(direction: 1)
            
        }
        
        if (currentPage > MIN_PAGE && sender.direction == UISwipeGestureRecognizerDirection.right) {
            moveScrollView(direction: -1)
        }
    }
    
    func moveScrollView(direction: Int){
        currentPage = currentPage + direction
        let point: CGPoint = CGPoint(x: scrollView.frame.size.width * CGFloat(currentPage), y: 0.0)
        scrollView.setContentOffset(point, animated: true)
        
        // Create a animation to increase the actual icon on screen
        UIView.animate(withDuration: 0.4){
            self.images[self.currentPage].transform = CGAffineTransform.init(scaleX: 1.4, y: 1.4)
            
            // Revert icon size of the non-active pages
            for x in 0..<self.images.count {
                if (x != self.currentPage) {
                    self.images[x].transform = CGAffineTransform.identity
                }
            }
        }
    }


}

