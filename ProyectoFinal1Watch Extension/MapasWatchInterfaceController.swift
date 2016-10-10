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
  
    }
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
       ///
        
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
