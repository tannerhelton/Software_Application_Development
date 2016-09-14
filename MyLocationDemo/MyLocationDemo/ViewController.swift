//
//  ViewController.swift
//  MyLocationDemo
//
//  Created by Tanner Helton on 9/13/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

class ViewController : UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        let initialLocation = CLLocation(latitude: 38.865211, longitude: -94.633979)
        centerMapOnLocation(initialLocation)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        self.mapView.setRegion(region, animated: true)
    }
    
    let regionRadius: CLLocationDistance = 2000
    
    func centerMapOnLocation(_ location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
}
    //@IBOutlet weak var map: MKMapView!
//    var locationManager: CLLocationManager!
//    
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//        
//        if (CLLocationManager.locationServicesEnabled())
//        {
//            locationManager = CLLocationManager()
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyBest
//            locationManager.requestAlwaysAuthorization()
//            locationManager.startUpdatingLocation()
//        }
//    }
//    
//    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
//    {
//        
//        let location = locations.last! as CLLocation
//        
//        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//        
//        self.map.setRegion(region, animated: true)
//    }
