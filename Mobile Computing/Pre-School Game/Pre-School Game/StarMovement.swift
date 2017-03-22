//
//  StarMovement.swift
//  Pre-School Game
//
//  Created by jr14abl on 22/03/2017.
//  Copyright © 2017 jr14abl. All rights reserved.
//

import UIKit

class StarMovement: UIImageView {

    func StarShake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 1
        animation.repeatCount = 10
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPoint(x: self.center.x - 0, y: self.center.y))
        animation.toValue = NSValue( CGPoint: CGPoint(x: self.center.x + 40, y: self.center.y))
        
        self.layer.addAnimation(animation, forKey: "position")
        
    }
    
}


