//
//  UIButtonShake.swift
//  Pre-School Game
//
//  Created by jr14abl on 23/03/2017.
//  Copyright © 2017 jr14abl. All rights reserved.
//

import UIKit

class UIButtonShake: UIButton {

    func shakeB() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue( CGPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.addAnimation(animation, forKey: "position")
        
    }


}
