//
//  poiController.swift
//  DetectiveToolkit
//
//  Created by Jonathan Tipton on 10/28/20.
//  Copyright © 2020 Jonathan Tipton. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class poiController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager:CLLocationManager = CLLocationManager()
    let userDefaults = UserDefaults.standard
    var appDelegate: AppDelegate!
    var count = 1
    var savedPins:[Pin] = []
    
    override func viewWillAppear(_ animated: Bool) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "locationArray") != nil {
            for dictionary in UserDefaults.standard.object(forKey: "locationArray") as! [[String:Double]]{
                let center = CLLocationCoordinate2D(latitude: dictionary["latitude"]!, longitude: dictionary["longitude"]!)
                let annotation = MKPointAnnotation()
                annotation.coordinate = center
                mapView.addAnnotation(annotation)
            }
        }
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone

        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.requestWhenInUseAuthorization()
        }
        
        if let userLocation = locationManager.location?.coordinate {
            let viewRegion = MKCoordinateRegion(center: userLocation, latitudinalMeters: 400, longitudinalMeters: 400)
            mapView.setRegion(viewRegion, animated: true)
        }
        
        DispatchQueue.main.async {
            self.locationManager.startUpdatingLocation()
        }
        let longPress : UILongPressGestureRecognizer = UILongPressGestureRecognizer()
        longPress.addTarget(self, action: #selector(dropPin(_:)))
        mapView.addGestureRecognizer(longPress)
        mapView.showsUserLocation = true
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else {return nil}
        
        let identifier = "Annotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        annotationView!.canShowCallout = true
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
    }
    else {
        annotationView!.annotation = annotation
    }
    return annotationView
    }
    
    @objc func dropPin(_ sender: UILongPressGestureRecognizer) {
        if sender.state != UIGestureRecognizer.State.began {
            return
        }
        print("longpressed")
        let location = sender.location(in: mapView)
        let coordinates: CLLocationCoordinate2D = mapView.convert(location, toCoordinateFrom: mapView)
        let newPin: MKPointAnnotation = MKPointAnnotation()
        newPin.coordinate = coordinates
        newPin.title = "Target \(count)"
        count+=1
        mapView.addAnnotation(newPin)
    }
}
