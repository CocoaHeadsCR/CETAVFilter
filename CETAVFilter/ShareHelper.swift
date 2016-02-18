//
//  ShareHelper.swift
//  CETAVFilter
//
//  Created by Christopher Jimenez on 2/18/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import UIKit

public class ShareHelper
{
    
    /**
     Shares and image using UIImage
     
     - parameter image: <#image description#>
     */
    public func buildShareWindowWithImage(image: UIImage, text:String = "Check out my cool image!") -> UIActivityViewController
    {
        
        let shareItems = [text,image]
        
        let activityController = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
        
        return activityController
    }
}
