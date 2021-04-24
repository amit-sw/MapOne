//
//  ViewController.swift
//  MapOne
//
//  Created by Amit Gupta on 4/23/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet private var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Set initial location in Honolulu
       populatePoints()
    }
    
    func populatePoints() {
        let initialLocation = CLLocation(latitude: 37.2656478150623, longitude: -122.0263242438)
        
        /*
         Data points:
         37.27,-122.03    597.8539284
         37.32,-121.83    543
         37.41,-121.9    631.8918919
         37.52,-121.93    928.3536585
         37.79,-122.41    978
         */
        mapView.centerToLocation(initialLocation)
        mapView.addAnnotation(SensorLocation(title: "597", locationName: "a", co2level: "597", coordinate: CLLocationCoordinate2D(latitude: 37.27, longitude: -122.03)))
        mapView.addAnnotation(SensorLocation(title: "543", locationName: "b", co2level: "543", coordinate: CLLocationCoordinate2D(latitude: 37.32, longitude: -121.83)))
        mapView.addAnnotation(SensorLocation(title: "631", locationName: "c", co2level: "631", coordinate: CLLocationCoordinate2D(latitude: 37.41, longitude: -121.9)))
        mapView.addAnnotation(SensorLocation(title: "928", locationName: "d", co2level: "928", coordinate: CLLocationCoordinate2D(latitude: 37.52, longitude: -121.93)))
        mapView.addAnnotation(SensorLocation(title: "978", locationName: "e", co2level: "978", coordinate: CLLocationCoordinate2D(latitude: 37.79, longitude: -122.41)))

    }

}




private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}


