//
//  ViewControllerProfesorNotes.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/21/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class ViewControllerProfesorNotes: UIViewController, UIScrollViewDelegate{
    @IBOutlet weak var scrollview: UIScrollView!
    var apuntes : String = ""

    @IBOutlet weak var wvPdf: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSURL(fileURLWithPath: Bundle.main.path(forResource: apuntes, ofType: "pdf")!)
        let request = NSURLRequest(url: path as URL)
        wvPdf.loadRequest(request as URLRequest)
        scrollview.addSubview(wvPdf)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return wvPdf
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
