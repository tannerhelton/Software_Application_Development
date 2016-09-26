//
//  ViewController.swift
//  MyLocationDemoSwift3
//
//  Created by Tanner Helton on 9/16/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//


//Monday, 10 November 2014
//Swift + Show Current Location and Update Location in a MKMapView
//First of all add & Import CoreLocation and MapKit framework in your class.
//
//If you are working with iOS 8 you must include the NSLocationAlwaysUsageDescription key in info.plist file of your current project to get the location services to work.


import UIKit
import CoreLocation

import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate
{
    
    @IBOutlet weak var map: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.map.mapType = MKMapType.standard
        self.map.showsUserLocation = true
        
        self.map.removeAnnotations(self.map.annotations)
        
        
        
        
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        
        let location = self.locationManager.location
        
        let latitude: Double = location!.coordinate.latitude
        let longitude: Double = location!.coordinate.longitude
        
        print("current latitude :: \(latitude)")
        print("current longitude :: \(longitude)")
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    
    //You have to override CLLocationManager.didUpdateLocations (part of CLLocationManagerDelegate) to get notified when the location manager retrieves the current location:
    
    private func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!)
    {
        //-
        
        let location = locations.last as! CLLocation
        
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        
        self.map.setRegion(region, animated: true)
        
        
        // Add an annotation on Map View
        let point: MKPointAnnotation! = MKPointAnnotation()
        
        point.coordinate = location.coordinate
        point.title = "Current Location"
        point.subtitle = "sub title"
        
        self.map.addAnnotation(point)
        
        //stop updating location to save battery life
        locationManager.stopUpdatingLocation()
        
    }
    
    
    //--- Uncomment to add custom annotation view ---//
    
    /*
     //--- use this code to add custom image (Annotation) for pin point ---//
     func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView!
     {
     if !(annotation is MKPointAnnotation)
     {
     return nil
     }
     
     let reuseId = "test"
     
     var anView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId)
     
     if anView == nil
     {
     anView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
     anView.image = UIImage(named:"1.png")
     anView.canShowCallout = true
     }
     else
     {
     anView.annotation = annotation
     }
     
     return anView
     }
     */
    
    
    
}
