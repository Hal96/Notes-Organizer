//
//  ViewControllerEditNote.swift
//  NotasFisica
//
//  Created by David Souza on 4/15/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit
import CoreData

protocol protocoloNote{
    
    func protoNote( date : Date, noteData : String, name : String, term : Int, update : Bool )
    
}

class ViewControllerEditNote: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfTerm: UITextField!
    
    var term : Int! // recibir el parcial
    var noteName : String! // recibir el nombre de la nota en caso de que se quiera editar
    var noteDescription : String! // recibir la descripcion de la nota en caso de que se quiera editar
    var updateNote : Bool! // para saber si se quiere agregar una nota nueva o solo editar una ya existente, se recibe como parametro de la vista anterior
    var dateId : Date! // se recibe como parametro en caso de que se quiera editar una nota
    var dateNewNote : Date?
    
    var delegate : protocoloNote! // lo que va a apuntar al tableViewControllerNote

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
 
 
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeKeyword))
        view.addGestureRecognizer(tap)
        
        
        if( !updateNote ){// se desea crear una nueva nota
            
            // obtener fecha de hoy
            dateNewNote = Date()

        }else{// solo se quiere actualizar una nota
            
            tfName.text = noteName
            textView.text = noteDescription
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func keyboardwillShow(notification: NSNotification){
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue{
            if tfName.isEditing {
                self.view.frame.origin.y -= keyboardSize.height / 2
            }
        }
    }
    
    @objc func keyboardwillHide(notification: NSNotification){
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue{
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y += keyboardSize.height / 2
            }
        }
    }
    
    
    @IBAction func saveNote(_ sender: Any) {
        
        if( textView.text == "" || tfName.text == "" ){ // validar que los text fields tengan información
            displayAlert(title: "Error", message: "Todos los campos deben contener información, favor de rellenarlos")
        }else{
            
            // Conseguir datos de los text fields
            let noteDescription = textView.text
            let noteName = tfName.text
            
            let dateParam : Date! // objeto que se manda al delegado, su valor depende si se quiere agregar o actualizar una nota
            
            if(!updateNote){ // quiero agregar una nueva nota
                dateParam = dateNewNote
            }else{
                dateParam = dateId // ya me dan el date la vista anterior
            }
            
            delegate.protoNote( date : dateParam, noteData : noteDescription!, name : noteName!, term : term, update : updateNote  )
            
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

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
