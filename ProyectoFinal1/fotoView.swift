//
//  fotoView.swift
//  ProyectoFinal1
//
//  Created by Luis Rodriguez on 02/10/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class fotoView: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var fotoVista: UIImageView!
    
    @IBOutlet weak var camaraboton: UIButton!
    
    private let miPicker = UIImagePickerController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if !UIImagePickerController.isSourceTypeAvailable(.Camera){
            camaraboton.hidden = true
        }
        miPicker.delegate = self
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func camara() {
        miPicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(miPicker, animated: true, completion: nil)
    }
    
    
    @IBAction func album() {
        miPicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(miPicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        fotoVista.image = image
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

    
    @IBAction func guardar() {
        UIImageWriteToSavedPhotosAlbum(fotoVista.image!, nil, nil, nil)
        let alerta = UIAlertController(title: "LISTO!", message: "foto guardada en el album", preferredStyle: .Alert)
        let accionOK = UIAlertAction(title: "OK", style: .Default, handler:
            { acciom in }
        )
        alerta.addAction(accionOK)
        self.presentViewController(alerta, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
