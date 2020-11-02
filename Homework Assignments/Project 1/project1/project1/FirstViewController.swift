//
//  FirstViewController.swift
//  project1
//
//  Created by Jake on 10/29/20.
//  Copyright © 2020 Jake. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Contacts

class FirstViewController: UIViewController, UINavigationControllerDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        locationManager.startUpdatingLocation()
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.distanceFilter = 40
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        
        let myHouse = CLLocationCoordinate2D(latitude: 37.24, longitude: -115.811111)
        let geofenceRegion = CLCircularRegion(center: myHouse, radius: (100.0*1000.0), identifier: "Area51")
        locationManager.startMonitoring(for: geofenceRegion)
    }
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion){
        print("Entered Area 51!")
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let currentLocation = locations.first{
            let mapRegion = MKCoordinateRegion(center: currentLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
            
            mapView.setRegion(mapRegion, animated: true)
        }
    }


}

