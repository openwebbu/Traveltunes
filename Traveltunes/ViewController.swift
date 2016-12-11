//
//  ViewController.swift
//  Traveltunes
//
//  Created by Aleksander Skjoelsvik on 11/28/16.
//  Copyright © 2016 Open Web. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var map: MKMapView!
    
    
    //NSHipster

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
        //CLLocationManager().requestWhenInUseAuthorization()
        let manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

