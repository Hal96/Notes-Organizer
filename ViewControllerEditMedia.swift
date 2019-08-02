//
//  ViewControllerEditMedia.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/8/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit
import CoreData

protocol protocoloFoto{
    
    func protoFoto( date : Date, photoData : Data, name : String, term : Int, update : Bool )
    
}

class ViewControllerEditMedia: UIViewController {
    
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfTerm: UITextField!
    
    var photo : UIImage? // para recibir la imagen que fue seleccionada en la pantalla anterior
    var term : Int = 0 // para recibir el parcial seleccionado
    var updateImage : Bool! // para saber si se tiene que agregar una imagen nueva o simplemente actualizar una ya existente
    var photoName : String! // Sirve para mostrar el nombre de una foto ya existente que quiere ser actualizada
    var dateId : Date! // Sirve como id para actualizar la foto seleccionada
    var dateNewPhoto : Date?
    
    var delegate : protocoloFoto! // lo que va a apuntar al tableViewControllerMedia
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfTerm.isHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeKeyword))
        view.addGestureRecognizer(tap)
        
        ivImage.image = photo // se recibe desde el tableView
        tfTerm.text = String(term) // se recibe desde el tableView
        
        if( !updateImage ){ // se va a agregar una nueva foto
            
            // obtener fecha de hoy
            dateNewPhoto = Date()
        }else{ // se va a actualizar una imagen
            tfName.text = photoName
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @objc func keyboardwillShow(notification: NSNotification){
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue{
            if tfName.isEditing || tfTerm.isEditing{
                self.view.frame.origin.y -= keyboardSize.height / 3
            }
        }
    }
    
    @objc func keyboardwillHide(notification: NSNotification){
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue{
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y += keyboardSize.height / 3
            }
        }
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        // Para pasar la foto a binary data
        let imageData = UIImagePNGRepresentation(photo!)!
        
        if( tfName.text == "" || tfTerm.text == ""){ // validar que todos los text fields tengan información
            displayAlert(title: "Error", message: "Todos los campos deben contener información, favor de rellenarlos")
        }else{
            let photoName = tfName.text!
            let photoTerm = Int(tfTerm.text!)!
            
            let dateParam : Date!
            
            if(!updateImage){ // quiero agregar una nueva foto
                dateParam = dateNewPhoto
            }else{
                dateParam = dateId // ya me dan el date la vista anterior
            }
            
            delegate.protoFoto( date : dateParam!, photoData : imageData, name : photoName, term : photoTerm, update : updateImage   )
            
            navigationController?.popViewController(animated: true)

        }
    
    }
    
    // Template para general alertas dinámicamente
    func displayAlert(title: String, message: String) {
        
        let alertcontroller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertcontroller.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alertcontroller, animated: true, completion: nil)
    }
    
    // Función para quitar el teclado de la pantalla
    @objc func removeKeyword() {
        view.endEditing(true)
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.landscape
    }
    override var shouldAutorotate: Bool{
        
        return false
    }
        
}
