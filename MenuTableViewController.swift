//
//  MenuTableViewController.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/7/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var topicName : String = ""
    var term : Int = 0
    var arrMenu : [ String ] = [ "Problems", "Photos", "Professor's notes", "My notes" ]
    var arricons : [UIImage] = [#imageLiteral(resourceName: "problemas"),#imageLiteral(resourceName: "fotos"),#imageLiteral(resourceName: "masternotes"),#imageLiteral(resourceName: "folder")]
    var segueIdentifier : [String] = ["professorProblems", "media", "professorNotes","myNotes"] // Esta variable identifca la celda seleccionada para el segue
    var TopicPdf : [String : String] = ["Cinematica" : "Apuntes-Cinemática", "Leyes de Newton" : "Apuntes-Leyes de Newton","Vectores" : "Vector Unitario","Trabajo y Energia" : "Apuntes-Trabajo y Energía","Mecanica Rotacional" : "Apuntes-Rotacional"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
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
    
    // Definir los renglones que despliega el Table View Controller
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrMenu.count
    }

    // Definir el contenido de cada celda
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idcell", for: indexPath)
        
        cell.textLabel?.text = arrMenu[ indexPath.row ]
        cell.imageView?.image = arricons[indexPath.row]
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifier[indexPath.row], sender: self)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = tableView.indexPathForSelectedRow
       
        // pasar el parcial y el nombre del tema
        
        switch indexPath?.row{
        case 0: // problemas
            let professorProblems = segue.destination as! ViewControllerProblems
            if topicName == "Cinematica"{
                professorProblems.tema = 1
            }
            else if topicName == "Vectores"{
                professorProblems.tema = 2
            }
            else if topicName == "Leyes de Newton"{
                professorProblems.tema = 3
            }
            else if topicName == "Trabajo y Energia" {
                professorProblems.tema = 4
            }
            else{
                professorProblems.tema = 5
            }
            break
        case 1: // photos
            let TableViewMedia = segue.destination as! TableViewControllerMedia
            TableViewMedia.mediaTopic = topicName
            TableViewMedia.term = term
            break
        case 2: // notas del profesor
            let professorMaterial = segue.destination as!ViewControllerProfesorNotes
            print("NOMBRE DE APUNTES")
            print(TopicPdf[topicName]!)
            professorMaterial.apuntes = TopicPdf[topicName]!
            break
        case 3: // mis notas
            let TableViewMyNotes = segue.destination as! TableViewControllerMyNotes
            TableViewMyNotes.term = term
            TableViewMyNotes.noteTopic = topicName
            break
        default:
            break
        
        }
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.landscape
    }
    override var shouldAutorotate: Bool{
        
        return false
    }
    

}
