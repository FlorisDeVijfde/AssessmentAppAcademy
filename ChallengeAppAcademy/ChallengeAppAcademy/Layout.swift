//
//  Layout.swift
//  ChallengeAppAcademy
//
//  Created by Floris de Vries on 03/06/2019.
//  Copyright © 2019 Floris de Vries. All rights reserved.
//

import UIKit

class Layout {
    
    //to be refactored!! Make Separate functions for each constraint with more variables
    class func addConstraints (vw: UIView, ibComponent: Any, ibComponentRelative: Any) {
        let widthConstraint = NSLayoutConstraint(item: ibComponent, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250)
        let heightConstraint = NSLayoutConstraint(item: ibComponent, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
        let xConstraint = NSLayoutConstraint(item: ibComponent, attribute: .centerX, relatedBy: .equal, toItem: vw, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraint = NSLayoutConstraint(item: ibComponent, attribute: .centerY, relatedBy: .equal, toItem: vw, attribute: .centerY, multiplier: 1, constant: 0)
        let topConstraint = NSLayoutConstraint(item: ibComponent, attribute: .top, relatedBy: .equal, toItem: ibComponentRelative, attribute: .bottom, multiplier: 1, constant: 10)
        
        NSLayoutConstraint.activate([widthConstraint, heightConstraint, xConstraint, yConstraint, topConstraint])
    }
    
}
