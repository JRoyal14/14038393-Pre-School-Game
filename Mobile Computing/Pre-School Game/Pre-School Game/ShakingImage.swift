//
//  ShakingImage.swift
//  Pre-School Game
//
//  Created by jr14abl on 22/03/2017.
//  Copyright © 2017 jr14abl. All rights reserved.
//

import UIKit

class ShakingImage: UIImageView {
    
    var startLocation: CGPoint?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        startLocation = touches.first?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?){
        let currentLocation = touches.first?.locationInView(self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPointMake(self.center.x+dx, self.center.y+dy)
        
        let halfx = self.bounds.midX
        center.x = max (halfx,center.x)
        center.x = min(self.superview!.bounds.size.width - halfx, center.x)
        
        let halfy = self.bounds.midY
        center.y = max (halfy + 240 , center.y)
        center.y = min(self.superview!.bounds.size.width - halfy + 290 , center.y)
        
        self.center = center
        
        
    }

    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue( CGPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.addAnimation(animation, forKey: "position")
        
    }
    
    
}


