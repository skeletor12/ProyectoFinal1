//
//  ConfiguracionCelda.swift
//  ProyectoFinalC
//
//  Created by Luis Rodriguez on 09/10/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ConfiguracionCelda: UITableViewCell {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var descripcion: UILabel!

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
