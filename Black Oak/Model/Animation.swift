//
//  Animation.swift
//  Black Oak
//
//  Created by Yash Patel on 23/03/22.
//

import Foundation
import UIKit

class Animation : CALayer{
    
    var animationGroup = CAAnimationGroup()
    var animationDuration: TimeInterval = 1.5
    var radius:CGFloat = 20
    var noOfpuls = 1
    
    override init(layer : Any) {
        super.init(layer: layer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(noOfpuls : Int = 1,radius :CGFloat, position: CGPoint){
        super.init()
        self.backgroundColor = UIColor.white.cgColor
        self.contentsScale = UIScreen.main.scale
        self.opacity = 0
        self.radius = radius
        self.noOfpuls = noOfpuls
        self.position = position
    }
    
    func sacleAnimation() -> CABasicAnimation{
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimation.fromValue = NSNumber(value: 0)
        scaleAnimation.toValue = NSNumber(value: 1)
        scaleAnimation.duration = animationDuration
        
        return scaleAnimation
    }
    
    func createOpacityAnimation() -> CAKeyframeAnimation{
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.duration = animationDuration
        opacityAnimation.keyTimes = [0,0.3,1]
        opacityAnimation.values = [0.4,0.8,0]
        return opacityAnimation
    }
}
