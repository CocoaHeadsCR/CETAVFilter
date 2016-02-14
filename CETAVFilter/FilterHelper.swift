//
//  FilterHelper.swift
//  CETAVFilter
//
//  Created by Chris Jimenez on 2/14/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import UIKit

/// A helper class to apply filters to an image
public class FilterHelper {
    
    //The context that will help us creating the image
    let context = CIContext(options: nil)
    
    /**
     Applys the filter to an image and returns it
     
     - parameter imageToFilter: Image to apply the filter to
     
     - returns: image with the filter apply
     */
    public func applyFilter(imageToFilter: UIImage) -> UIImage
    {
        //Creates the CI image
        let inputImage = CIImage(image: imageToFilter)
        
        //Adds the filter to the image
        let filteredImage = inputImage!.imageByApplyingFilter("CIHueAdjust", withInputParameters: [kCIInputAngleKey:200])
    
        //Renders the image
        let renderedImage = context.createCGImage(filteredImage, fromRect: filteredImage.extent)
        
        
        //Returns the image
        return UIImage(CGImage: renderedImage)
    }
    
}
