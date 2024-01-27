//
//  ViewController.swift
//  AnimationSwitch
//
//  Created by Pavel Gribachev on 25.01.2024.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {

    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationSpringView: SpringView! {
        didSet {
            animationSpringView.layer.borderColor = UIColor.white.cgColor
            animationSpringView.layer.borderWidth = 2
            
            animationSpringView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var animationChangeButton: SpringButton!{
        didSet {            
            animationChangeButton.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startScreen()
    }
    
    @IBAction func changingSpringViewDidTapped(_ sender: SpringButton) {
        changeAnimation()
    }
}

private extension AnimationViewController {
    func changeAnimation() {
        
        let packAnimation = PackAnimation().getAnimation()
        
        animationSpringView.animation = packAnimation.preset
        animationSpringView.curve = packAnimation.curve
        animationSpringView.force = packAnimation.force
        animationSpringView.duration = packAnimation.duration
        animationSpringView.delay = packAnimation.delay
        
        presetLabel.text = "preset: \(packAnimation.preset)"
        curveLabel.text = "curve: \(packAnimation.curve)"
        forceLabel.text = "force: \(packAnimation.force)"
        durationLabel.text = "duration: \(packAnimation.duration)"
        delayLabel.text = "delay: \(packAnimation.delay)"
        
        animationChangeButton.setTitle(
            "Run \(packAnimation.preset)",
            for: .normal
        )
        
        animationSpringView.animate()
    }
    
    func startScreen() {
        
        let animation = PackAnimation().getAnimation()
        
        animationSpringView.animation = animation.preset
        animationSpringView.curve = animation.curve
        animationSpringView.force = animation.force
        animationSpringView.duration = animation.duration
        animationSpringView.delay = animation.delay
        
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
    }
}
