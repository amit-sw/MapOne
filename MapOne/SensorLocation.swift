//
//  SensorLocation.swift
//  MapOne
//
//  Created by Amit Gupta on 4/23/21.
//

import Foundation
import MapKit

class SensorLocation: NSObject, MKAnnotation {
    let title: String?
    let locationName: String?
    let co2level: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?,
         locationName: String?,
         co2level: String?,
         coordinate: CLLocationCoordinate2D) {
        
        self.title=title
        self.coordinate=coordinate
        self.co2level=co2level
        self.locationName=locationName
        super.init()
    }
    
    var subtitle: String? {
        return co2level
    }
}
