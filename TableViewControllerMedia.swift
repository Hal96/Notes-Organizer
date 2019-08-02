//
//  TableViewControllerMedia.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/8/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit
import CoreData

class TableViewControllerMedia: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, protocoloFoto {
    var superIndex : Int!
    var mediaTopic : String = "" // para recibir el tema seleccionado
    var term : Int = 0 // para recibir el parcial seleccionado
    
    var photoAdded : UIImage! // para enviar foto tomada a otra vista
    var indexRow : Int = 0 // para pasar el indice de la fila que fue seleccionada al viewController de media
    var takeImageAction : Bool! // para obtener la informacion de la foto dependiendo si se tomo una foto o si se selecciono una fila de la tabla
    
    var results : [AnyObject] = [] // para almacenar todos los objetos recibidos del fetch request (todos los objetos de las fotos)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = mediaTopic + " Photo's"
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        takeImageAction = false // valor default
        
        // variables para manipular CoreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        // Filtrar contenido por el parcial y tema en el que nos encontramos
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PhotoNote")//returns an object of type NSFetchRequestResult
        request.returnsObjectsAsFaults = false //if it was set to "true", instead of the request returning the actual values inside the DB, it would return "Faults"
        request.predicate = NSPredicate(format: "term = %@ AND topicName = %@", NSNumber(value: term), mediaTopic )//this lets us look for specific data
                
        do {
            results = try context.fetch(request) // obtener contenido
            
        }catch {
            print("Couldn't fetch results")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func imgButton(_ sender: UIButton) {
        superIndex = sender.tag
        performSegue(withIdentifier: "showPhoto", sender: sender)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // desplegar las fotos o los videos
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return results.count
    }

    // desplegar el contenido de la seccion de las fotos o de la seccion de videos
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idcell", for: indexPath) as! CustomTableViewCellMedia
        
        // Indica el indice de la fila de la tabla
        let tempIndex = indexPath.row
        for result in results{
            print(result.value(forKey: "photoName")!)
        }
        
        cell.btView.tag = tempIndex
        
        let imageUIImage : UIImage = UIImage(data: results[tempIndex].value(forKey: "photo") as! Data )!
        cell.lbName.text = results[tempIndex].value(forKey: "photoName") as? String // nombre de foto
        
        cell.ivMedia.image = imageUIImage // contenido de foto
        
        // convertir el objeto date a string
    
        let formatter = DateFormatter()
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: results[tempIndex].value(forKey: "date") as! Date)
        
        cell.lbDate.text = myStringafd // date de foto

        let color = UIColor.white
        let fRed: CGFloat = 135/255
        let fGreen: CGFloat = 206/255
        let fBlue: CGFloat = 235/255
        let fAlpha: CGFloat = 0.5
        
        if(tempIndex % 2 == 0){
            cell.backgroundColor = UIColor(red: fRed, green: fGreen, blue: fBlue, alpha: fAlpha)
        }else{
            cell.backgroundColor = color
        }

        return cell
    }
    
    
    // Sirve para acceder a la camara del usuario
    @IBAction func takePhoto(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self //the viewController has control over the imagePickerController
        
        imagePickerController.sourceType = UIImagePickerControllerSourceType.camera //enables accesss to camera
        
        imagePickerController.allowsEditing = false
        
        //completion is nil since we do not have to do anything when the imagePickerController is presented
        //imagePickerController represents the UIViewController, this is possible since we delegated the imagePickerController to our ViewController
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    // Sirve para procesar la imagen del usuario y mostrarsela
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {//info is a var. that contains the image
            
            photoAdded = image // para poder enviar la imagen tomada a otra vista
            takeImageAction = true // para definir que el segue se realiza porque se toma una foto nueva
            performSegue(withIdentifier: "mediaEdit", sender: nil)
            
        } else {
            
            print ("There was a problem with the image")
        }
        
        self.dismiss(animated: true, completion: nil)//this will close the imagePickerController after the image is selected
    }
    
    
    // implementar la funcion del protocolo
    func protoFoto( date : Date, photoData : Data, name : String, term : Int, update : Bool ){
        
        // variables para manipular CoreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        if( !update ){ // Significa que se tiene que agregar una nueva imagen a CoreData
            
             let newPhoto = NSEntityDescription.insertNewObject(forEntityName: "PhotoNote", into: context)
            
            // Asignar atributos de la foto en Core Data
            newPhoto.setValue(photoData, forKey: "photo")
            newPhoto.setValue(name, forKey: "photoName")
            newPhoto.setValue(term, forKey: "term")
            newPhoto.setValue(date, forKey: "date")
            newPhoto.setValue(mediaTopic, forKey: "topicName")
            
            do {
                try context.save() // guardar foto
                print("Saved protocol photo")
            } catch {
                print("There was an error")
            }
        }else{ // tenemos que actualizar una imagen ya existente en CoreData
            
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PhotoNote")//returns an object of type NSFetchRequestResult
            request.returnsObjectsAsFaults = false
            request.predicate = NSPredicate(format: "date = %@", date as CVarArg)// conseguir el registro con la fecha indicada
            
            do {
                
                let results = try context.fetch(request) // obtener contenido
                
                if results.count == 1 { // Se encontro el registro unico correcto
                    
                    let objectUpdate = results[0] as! NSManagedObject // obtener el objeto a actualizar
                    
                    // actualizar los campos de la imagen
                    objectUpdate.setValue(name, forKey: "photoName")
                    objectUpdate.setValue(term, forKey: "term")
                    objectUpdate.setValue(date, forKey: "date")
                    objectUpdate.setValue(photoData, forKey: "photo")
                    
                    do{
                        try context.save() // actualizar imagen
                    }
                    catch{
                        print(error)
                    }
                }else {
                    print("No results hola")
                }
            }catch {
                print("Couldn't fetch results")
            }
        }
        
        // Filtrar contenido por el parcial en el que nos encontramos
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PhotoNote")//returns an object of type NSFetchRequestResult
        request.returnsObjectsAsFaults = false //if it was set to "true", instead of the request returning the actual values inside the DB, it would return "Faults"
        request.predicate = NSPredicate(format: "term = %@ AND topicName = %@", NSNumber(value: term), mediaTopic )//this lets us look for specific data
 
        do{
            results = try context.fetch(request)
        }catch{
        }
        //viewDidLoad()
        tableView.reloadData()
        
    }
    
    
    // MARK: - Navigation
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mediaEdit"{
            let mediaEdit = segue.destination as! ViewControllerEditMedia
            
            mediaEdit.delegate = self // para que la pantalla de MediaEdit esté apuntando al tableViewMEdia (este)
            
            if(takeImageAction){ // la foto se tomo y se quiere agregar como nueva
                mediaEdit.photo = photoAdded
                mediaEdit.updateImage = false // para decirle a la vista siguiente que se quiere agregar una foto nueva
                takeImageAction = false // para que el valor vuelva al default
            }
            else{ // la foto se selecciono de la tabla (es una de las filas), se quiere editar
                
                let indexPath = tableView.indexPathForSelectedRow
                let selectedRow = indexPath?.row
                let imageUIImage : UIImage = UIImage(data: results[selectedRow!].value(forKey: "photo") as! Data )! // conseguir la imagen seleccionada de la fila seleccionada
                mediaEdit.photoName = results[ selectedRow! ].value(forKey: "photoName") as? String // pasar nombre de foto
                mediaEdit.photo =  imageUIImage // pasar contenido de foto
                
                mediaEdit.dateId = results[ selectedRow! ].value(forKey: "date") as! Date  // pasar date de la foto, sirve como id de la imagen
                mediaEdit.updateImage = true // para identificar que la imagen se quiere actualizar
            }
            
            mediaEdit.term = term
        }
        else if segue.identifier == "showPhoto"{
            
            let imageUIImage : UIImage = UIImage(data: results[superIndex!].value(forKey: "photo") as! Data )!
            
            let view = segue.destination as! ImagezoomViewController
            view.imagePhoto = imageUIImage
            
        }
    }


    
    // Para que el usuario pueda borrar una foto de CoreData
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            // variables para manipular CoreData
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let deleteDate = results[indexPath.row].value(forKey: "date") as! Date // Conseguir el date de la foto que se queire borrar
            
            results.remove(at: indexPath.row) // borrar la foto del arreglo
        
            // borrar la foto guardada en CoreData
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PhotoNote")//returns an object of type NSFetchRequestResult
            request.returnsObjectsAsFaults = false
            request.predicate = NSPredicate(format: "date = %@", deleteDate as CVarArg)// conseguir el registro (nota) con la fecha indicada
            
            do{
                let objects = try context.fetch(request)
                let deleteOject = objects[ 0 ]  as! NSManagedObject
                context.delete(deleteOject)
                try context.save()
                
            }catch{
                print( "no hay resultados" )
            }

            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
 

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let temp = results[fromIndexPath.row]
        results[fromIndexPath.row] = results[to.row]
        results[to.row] = temp
        
    }
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.landscape
    }
    override var shouldAutorotate: Bool{
        
        return false
    }
 

    

}
