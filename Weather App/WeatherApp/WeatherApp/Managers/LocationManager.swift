//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Asad on 3/17/23.
//

import Foundation

// To get the user's current Location
import CoreLocation

//To manage everything related to location without running into ant errors
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?//locaiton
    @Published var isLoading = false//loading state
    
    override init() {
        super.init()
        manager.delegate = self
    }
    //initiate the process of obtaining the device's location information
    func requestlocation() {
        isLoading = true
        manager.requestLocation()
    }
    //This function is called when the location manager object receives new location data from the device
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    // funtion to handle errors
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location", error)
        isLoading = false
    }
}
