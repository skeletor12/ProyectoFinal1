//
//  Teatros.swift
//  ProyectoFinalC
//
//  Created by Luis Rodriguez on 09/10/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import Foundation

class Teatros {
    var name: String = ""
    var description: String = ""

    
    init (name: String, description: String) {
        self.name = name
        self.description = description
   
    }
    
    init () {
        self.name = "";
        self.description = "";
    }
}
