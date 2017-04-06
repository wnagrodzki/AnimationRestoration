//
//  ViewController.swift
//  AnimationRestoration
//
//  Created by Wojciech Nagrodzki on 06/04/2017.
//  Copyright © 2017 Wojciech Nagrodzki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewB: UIView!
    private var didAddAnimations = false

    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        addAnimationsIfPossible()
    }
    
    private func addAnimationsIfPossible() {
        guard !didAddAnimations else { return }
        
        let rotationA = CABasicAnimation.makeInfiniteRotation()
        viewA.layer.add(rotationA, forKey: "rotationA")
        
        let rotationB = CABasicAnimation.makeInfiniteRotation()
        viewB.layer.add(rotationB, forKey: "rotationB")
        
        didAddAnimations = true
    }
    
    override func didMove(toParentViewController parent: UIViewController?) {
        super.didMove(toParentViewController: parent)
    }
}

extension CABasicAnimation {
    
    static func makeInfiniteRotation() -> CABasicAnimation {
        
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.fromValue = 0
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 2
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        return rotation
    }
}

