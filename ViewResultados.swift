//
//  ViewResultados.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/21/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class ViewResultados: UIViewController {

    @IBOutlet weak var lbResultados: UILabel!
    @IBOutlet weak var ansphoto: UIImageView!
    var noCorrect = 0
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbResultados.text = "You got \(noCorrect) out of \(total) correct"
        if noCorrect == total{
            view.backgroundColor = UIColor.green
            ansphoto.image = #imageLiteral(resourceName: "checkmark")
        }
        else if noCorrect > 0 && noCorrect != total{
            view.backgroundColor = UIColor.yellow
            ansphoto.isHidden = true
        }
        else{
            view.backgroundColor = UIColor.red
            ansphoto.image = #imageLiteral(resourceName: "cross")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
