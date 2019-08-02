//
//  ViewController.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/7/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    var topics0 : [String] = ["Cinematica","Vectores"] // Arreglo de topics core data del 1er parcial
    var topics1 : [String] = ["Leyes de Newton"] // Arreglo de topics core data del 2do parcial
    var topics2 : [String] = ["Trabajo y Energia","Mecanica Rotacional"] // Arreglo de topics core data del 3er parcial
    var pickerValue : Int = 0   // Seleccionador de parcial
    var arrTerms : [ String ] = [ "1st Term", "2nd Term", "3rd Term" ] // Arreglo de parciales
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func showInfo(_ sender: Any) {
        let popover = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popId") as! PopInfoViewController
        self.addChildViewController(popover)
        popover.view.frame = self.view.frame
        self.view.addSubview(popover.view)
        popover.didMove(toParentViewController: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // variables para manipular el pickerView
        pickerView.delegate = self
        pickerView.dataSource = self
        /*
        // variables para manipular CoreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        */
        //Aqui se insertan temas a ala aplicacion -->
       /*
        let newTopic = NSEntityDescription.insertNewObject(forEntityName: "Topic", into: context)
        newTopic.setValue("PRUEBA 1", forKey: "topicName")
        newTopic.setValue(0, forKey: "term")
        
        do {
            
            try context.save()
            
            print("Saved")
            
        } catch {
            
            print("There was an error")
            
        }
    */
        //request is an array
        //para llenar los arreglos de los parciales con temas
      /*  for index in 0...2{
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Topic")//returns an object of type NSFetchRequestResult
            request.returnsObjectsAsFaults = false //if it was set to "true", instead of the request returning the actual values inside the DB, it would return "Faults"
            
            request.predicate = NSPredicate(format: "term = %@", String(index))//this lets us look for specific data
            
            // Este loop es responsable de agregar temas a los arreglos de los temas
            do {
                let results = try context.fetch(request)
                
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        
                        if let topicName = result.value(forKey: "topicName") as? String {
                            if index == 0{
                                topics0.append(topicName)
                                
                                print(topicName)
                            }
                            else if index == 1{
                                topics1.append(topicName)
                                print(topicName)
                            }
                            else{
                                topics2.append(topicName)
                                print(topicName)
                            }
                        }
                    }
                }else {
                    print("No results")
                }
            }catch {
                
                print("Couldn't fetch results")
                
            }
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Definir el número de secciones de scrolling que tiene el pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Definir el número de items que despliega el pirckerView
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    // Para definir la fila que está seleccionada por el pickerView
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch (row) {
            case 0:
                pickerValue = 0;
            case 1:
                pickerValue = 1;
            case 2:
                pickerValue = 2;
            default:
                break
            }
        tableView.reloadData()
    }
    
    // Regresar el nombre de los parciales
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String( describing: arrTerms[ row ] )
    }
    
    // Definir el número de rows que va a desplegar el tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch pickerValue {
            case 0:
                return topics0.count
            case 1:
                return topics1.count
            case 2:
                return topics2.count
            default:
                break
            }
        return 0
    }
    
    // Definir el contenido de cada celda dependiendo del parcial que está seleccionado
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idcell", for: indexPath)
        
        switch( pickerValue ){
        case 0:
            cell.textLabel?.text = topics0[ indexPath.row ]
            break
        case 1:
            cell.textLabel?.text = topics1[ indexPath.row ]
            break
        case 2:
            cell.textLabel?.text = topics2[ indexPath.row ]
            break
        default:
            break
            
        }
        
        let tempIndex = indexPath.row
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
    
    // Se manda el nombre del tema seleccionado y del parcial al que pertenece
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let menuTableView = segue.destination as! MenuTableViewController
        let indexPath = tableView.indexPathForSelectedRow
        
        // mandar el parcial y el nombre del tema
        
        switch pickerValue {
        case 0:
            menuTableView.topicName = topics0[(indexPath?.row)!]
            break
        case 1:
            menuTableView.topicName = topics1[(indexPath?.row)!]
            break
        case 2:
            menuTableView.topicName = topics2[(indexPath?.row)!]
            break
        default:
            break
        }
        menuTableView.term = pickerValue
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.landscape
    }
    override var shouldAutorotate: Bool{
        
        return false
    }
}

