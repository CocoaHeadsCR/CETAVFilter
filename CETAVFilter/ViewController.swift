//
//  ViewController.swift
//  CETAVFilter
//
//  Created by Chris Jimenez on 2/14/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    lazy var filterHelper:FilterHelper = FilterHelper()
    
    lazy var shareHelper:ShareHelper = ShareHelper()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func applyFilterTouched(sender: AnyObject) {
        
        if let image = photoImageView.image
        {
        
            let filteredImage =  filterHelper.applyFilter(image)
        
            photoImageView.image = filteredImage
        }
        
    }

    @IBAction func shareTouched(sender: AnyObject) {
        
        if let image = photoImageView.image
        {
        
            let shareWindow = shareHelper.buildShareWindow(image)
        
            self.presentViewController(shareWindow, animated: true) { () -> Void in
            //Add completion code
            }
        }
    }
}

