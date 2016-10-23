//
//  EventosTableView.swift
//  ProyectoFinalC
//
//  Created by Luis Rodriguez on 09/10/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit



class EventosTableView: UITableViewController {
    
    
var teatros: [Teatros] = [Teatros]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "http://www.gobiernoabierto.cdmx.gob.mx/sigdata/resources/datasets/LocalizaciondeMuseosFarosyRecintosquedependendelGDF-MuseosFarosRecintos.json"
        
        let urls = NSURL(string: url)
        let datos = NSData(contentsOfURL: urls!)
        
        //print (datos)
        
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(datos!, options: NSJSONReadingOptions.MutableContainers)
            
            let dico1 = json as! NSArray as Array
            for event in dico1 {
                let teatross = Teatros ()
                teatross.name = event["name"] as! NSString as String
                teatross.description = event["description"] as! NSString as String
                
                self.teatros.append(teatross)
            }
        }
        catch {
            
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.teatros.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Celda", forIndexPath: indexPath) as! ConfiguracionCelda

        cell.name.text = teatros[(indexPath as NSIndexPath).row].name
        cell.descripcion.text = teatros[(indexPath as NSIndexPath).row].description

        return cell
    }

}
