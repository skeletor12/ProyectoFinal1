//
//  MapasWatchInterfaceController.swift
//  ProyectoFinal1
//
//  Created by Luis Rodriguez on 08/10/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation
import MapKit


class MapasWatchInterfaceController: WKInterfaceController, CLLocationManagerDelegate {
    

    let manejador = CLLocationManager()
    @IBOutlet var mapa: WKInterfaceMap!
    @IBAction func zoom(value: Float) {
        let grados:CLLocationDegrees=CLLocationDegrees(value)/10
        let ventana = MKCoordinateSpanMake(grados, grados)
        let puntoCoor = CLLocationCoordinate2D(latitude: (manejador.location?.coordinate.latitude)!, longitude: (manejador.location?.coordinate.longitude)!)
        let region = MKCoordinateRegionMake(puntoCoor, ventana)
        self.mapa.setRegion(region)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
        manejador.delegate = self
        manejador.desiredAccuracy = kCLLocationAccuracyBest
        
        let puntoCoor = CLLocationCoordinate2D(latitude: (manejador.location?.coordinate.latitude)!, longitude: (manejador.location?.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: puntoCoor, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        self.mapa.setRegion(region)
        self.mapa.addAnnotation(puntoCoor, withPinColor: .Purple)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
