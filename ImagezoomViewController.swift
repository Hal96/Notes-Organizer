//
//  ImagezoomViewController.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 5/5/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class ImagezoomViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollview: UIScrollView!
    var imagePhoto : UIImage!
    var zoomimage : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomimage = UIImageView(image: imagePhoto)
        scrollview.addSubview(zoomimage)
        
        scrollview.contentSize = imagePhoto.size
        
        let punto = CGPoint(x: 500, y:  250)
        
        scrollview.setContentOffset(punto, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return zoomimage
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
