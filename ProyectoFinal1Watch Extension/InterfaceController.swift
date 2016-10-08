//
//  InterfaceController.swift
//  ProyectoFinal1Watch Extension
//
//  Created by Luis Rodriguez on 07/10/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation
import CoreData
import CoreLocation


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet var table: WKInterfaceTable!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
     
        
        table.setNumberOfRows(3, withRowType: "LabelRow")
        for (var i = 0; i<table.numberOfRows; i++){
         let row = table.rowControllerAtIndex(i) as? LabelRow
        row!.label.setText("Ruta \(i+1)")
        }
    }
    
        
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
