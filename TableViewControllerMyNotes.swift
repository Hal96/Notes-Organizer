//
//  TableViewControllerMyNotes.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/11/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit
import CoreData

class TableViewControllerMyNotes: UITableViewController, protocoloNote {
    
    var term : Int = 0 // recibir parcial
    var noteTopic : String! // recibir tema
    var newNote : Bool! // para identificar si se quiere agregar una nueva nota o solo se quiere editar una ya existente
    
    var results : [AnyObject] = [] // para almacenar todos los objetos recibidos del fetch request (todos los objetos de las notas)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = noteTopic + " note's"
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        newNote = false // valor default
        
        // variables para manipular CoreDate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "StudentNote") //returns an object of type NSFetchRequestResult
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "topicIdent = %@ AND topicName = %@", NSNumber(value: term), noteTopic) // filtramos por parcial y tema
        
        do {
            results = try context.fetch(request) // obtener notas

        }catch {
            print("Couldn't fetch results")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return results.count
    }

    // Mostrar las notas en la tabla
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellNotes
        
        let tempIndex = indexPath.row

        cell.lbTitleNotes.text = results[tempIndex].value(forKey: "name") as? String // nombre de nota
        cell.lbDescriptionNotes.text = results[tempIndex].value(forKey: "note") as? String // descripcion de nota
        
        // cambiar date a string
        let formatter = DateFormatter()
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: results[tempIndex].value(forKey: "date1") as! Date)
        
        cell.lbDateNotes.text = myStringafd // date de nota
        
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
    
    
    // para agregar una nueva nota
    @IBAction func addNote(_ sender: Any) {
     
        newNote = true // para definir que el segue se realiza porque se quiere agregar una nueva nota
        performSegue(withIdentifier: "editNote", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editNote"{
            let viewEditNote = segue.destination as! ViewControllerEditNote
            
            viewEditNote.delegate = self // para que la pantalla de EditNote esté apuntando al tableViewMyNotes (este)
            
            if(newNote){ // se quiere agregar una nueva nota
                viewEditNote.updateNote = false // se le dice al siguiente viewController que se quiere agregar una nota nueva
                newNote = false // regresar a valor default
            }else{ // la nota se quiere editar solamente
                
                let indexPath = tableView.indexPathForSelectedRow // conseguir indice de la fila seleccionada
                let selectedRow = indexPath?.row
                let note = results[ selectedRow! ] // conseguir la nota seleccionada desde el arreglo de notas
                viewEditNote.noteName = note.value(forKey: "name") as? String // pasar el nombre de la nota
                viewEditNote.noteDescription = note.value(forKey: "note") as? String // pasar la descripcion de la nota

                viewEditNote.dateId = results[ selectedRow! ].value(forKey: "date1") as? Date // pasar el date de la nota, que sirve como id en CoreData
               
                viewEditNote.updateNote = true // para identificar que la nota se quiere actualizar
            }
            
            viewEditNote.term = term // se pasa el parcial
        }
    }
 
    // implementar la funcion del protocolo de notas
    func protoNote( date : Date, noteData : String, name : String, term : Int, update : Bool ){
        
        // variables para manipular CoreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        if( !update ){ // Significa que se tiene que agregar una nueva nota a CoreData
            
            let note = NSEntityDescription.insertNewObject(forEntityName: "StudentNote", into: context)
            
            // Asignar atributos de la foto en Core Data
            note.setValue(name, forKey: "name")
            note.setValue(noteData, forKey: "note")
            note.setValue(date, forKey: "date1")
            note.setValue(noteTopic, forKey: "topicName")
            note.setValue(term, forKey: "topicIdent") // este es el term
            
            do {
                try context.save() // guardar nota
                print("Saved protocol note")
            } catch {
                print("There was an error")
            }
        }else{ // Significa que se quiere actualizar una nota
            
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "StudentNote")//returns an object of type NSFetchRequestResult
            request.returnsObjectsAsFaults = false
            request.predicate = NSPredicate(format: "date1 = %@", date as CVarArg)// conseguir el registro (nota) con la fecha indicada
            
            do {
                
                let results = try context.fetch(request) // obtener contenido
                
                if results.count == 1 { // Se encontro el registro unico correcto
                    
                    let objectUpdate = results[0] as! NSManagedObject // obtener el objeto a actualizar
                    
                    objectUpdate.setValue(name, forKey: "name")
                    objectUpdate.setValue(term, forKey: "topicIdent") // este es el term
                    objectUpdate.setValue(date, forKey: "date1")
                    objectUpdate.setValue(noteData, forKey: "note")
                    objectUpdate.setValue(noteTopic, forKey: "topicName")
                
                    do{
                        try context.save()
                    }
                    catch
                    {
                        print(error)
                    }
                    
                }else {
                    print("No results")
                }
            }catch {
                print("Couldn't fetch results")
            }
        }
        
        // Ahora se debe actualizar el arreglo de notas para que se puedan ver los cambios de agregar/editar en el tableView
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "StudentNote")//returns an object of type NSFetchRequestResult
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "topicIdent = %@ AND topicName = %@", NSNumber(value: term), noteTopic) // filtramos por parcial y tema
        
        do{
            results = try context.fetch(request)
            print("si hay resultados reload")
            print("results.count")
            print(results.count)
        }catch{
            print( "no hay resultados" )
        }
        
         tableView.reloadData()
        
    }
    

    
    // Para que el usuario pueda borrar una nota de CoreData
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
            
            let deleteDate = results[indexPath.row].value(forKey: "date1") as! Date // Conseguir el date de la foto que se queire borrar
            
            results.remove(at: indexPath.row) // borrar la foto del arreglo
            
            // borrar la foto guardada en CoreData
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "StudentNote")//returns an object of type NSFetchRequestResult
            request.returnsObjectsAsFaults = false
            request.predicate = NSPredicate(format: "date1 = %@", deleteDate as CVarArg)// conseguir el registro (nota) con la fecha indicada
            
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
    
    
    // para que el usuario pueda mover el orden de las notas
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let temp = results[fromIndexPath.row]
        results[fromIndexPath.row] = results[to.row]
        results[to.row] = temp
        
    }
    
    // función auxiliar para que el usuario pueda mover el orden de las notas
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
 
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
