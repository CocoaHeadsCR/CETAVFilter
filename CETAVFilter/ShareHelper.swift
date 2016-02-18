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
    public func buildShareWindowWithImage(image: UIImage) -> UIActivityViewController
    {

        let textToShare = "Check out my cool image!"
        
        let shareItems = [textToShare,image]
        
        let activityController = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
        
        return activityController
    }
}
