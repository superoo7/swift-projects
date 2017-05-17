//
//  ViewController.swift
//  Map
//
//  Created by Johnson Lai on 17/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // map
        // lat and long
        let latitude: CLLocationDegrees = 27.175244
        let longitude: CLLocationDegrees = 78.0399773
        
        // zoom level
        let latDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        
        // combine lon and lat delta
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        // location
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        // combine location and span
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
        
        // annotation
        let annotation = MKPointAnnotation()
        
        annotation.title = "Taj Mahal"
        annotation.subtitle = "one day I will go here"
        annotation.coordinate = location
        
        map.addAnnotation(annotation)
        
        // ui long press gesture recognizer
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        uilpgr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilpgr)
        
    }
    
    func longpress(gestureRecognizer: UIGestureRecognizer) {
        let touchPoint = gestureRecognizer.location(in: self.map)
        
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = coordinate
        
        annotation.title = "New place"
        annotation.subtitle = "Maybe here?"
        
        map.addAnnotation(annotation)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

