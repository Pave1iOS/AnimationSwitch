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
            animationSpringView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var animationChangeButton: SpringButton!{
        didSet {
            animationChangeButton.layer.cornerRadius = 10
        }
    }
    
    private let packAnimation = PackAnimation().getAnimation()

    private var indexAnimation = 0 {
        didSet {
            if indexAnimation == packAnimation.count - 1 {
                indexAnimation = 0
                
                animationChangeButton.setTitle("Run again", for: .normal)
            }
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
        
        let selectedAnimation = packAnimation[indexAnimation]
        
        animationSpringView.animation = selectedAnimation.preset
        animationSpringView.curve = selectedAnimation.curve
        animationSpringView.force = selectedAnimation.force
        animationSpringView.duration = selectedAnimation.duration
        animationSpringView.delay = selectedAnimation.delay
        
        presetLabel.text = "preset: \(selectedAnimation.preset)"
        curveLabel.text = "curve: \(selectedAnimation.curve)"
        forceLabel.text = "force: \(selectedAnimation.force)"
        durationLabel.text = "duration: \(selectedAnimation.duration)"
        delayLabel.text = "delay: \(selectedAnimation.delay)"
        
        animationChangeButton.setTitle(
            "Run \(packAnimation[indexAnimation + 1].preset)",
            for: .normal
        )
        
        animationSpringView.animate()
        indexAnimation += 1
        
    }
    
    func startScreen() {
        
        packAnimation.forEach { animation in
        
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
}
