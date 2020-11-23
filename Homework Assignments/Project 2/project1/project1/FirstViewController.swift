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
import CoreData

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
        
        let myHouse = CLLocationCoordinate2D(latitude: 40.689247, longitude: -74.044502)
        let geofenceRegion = CLCircularRegion(center: myHouse, radius: (100.0*1000.0), identifier: "Area51")
        locationManager.startMonitoring(for: geofenceRegion)
    }
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion){
        let alertController = UIAlertController(title: "Alert!", message: "You have reached the Statue of Liberty!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let currentLocation = locations.first{
            let mapRegion = MKCoordinateRegion(center: currentLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
            
            mapView.setRegion(mapRegion, animated: true)
        }
    }


}

