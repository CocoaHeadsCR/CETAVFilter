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
    
    let filterHelper:FilterHelper = FilterHelper()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func applyFilterTouched(sender: AnyObject) {
        
        
        let image = photoImageView.image!
        
        let filteredImage =  filterHelper.applyFilter(image)
        
        photoImageView.image = filteredImage
        
    }

    @IBAction func shareTouched(sender: AnyObject) {
        
        
    }
}

