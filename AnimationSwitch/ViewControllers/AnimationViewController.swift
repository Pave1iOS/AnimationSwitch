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
    
    private let preset = MainAnimation().preset
    private let curve = MainAnimation().curve

    private var animationIndex = 0 {
        didSet {
            if animationIndex + 1 == preset.count {
                animationIndex = 0
                
                animationChangeButton.setTitle("Run again", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationSpringView.animation = preset[animationIndex]
        animationSpringView.curve = curve[animationIndex]
        animationSpringView.force = 1.00
        animationSpringView.duration = 0.50
        animationSpringView.delay = 1.33
        
        presetLabel.text = "preset: \(preset[animationIndex])"
        curveLabel.text = "curve: \(curve[animationIndex])"
        forceLabel.text = "force: 1.00"
        durationLabel.text = "duration: 0.50"
        delayLabel.text = "delay: 1.33"
        
    }
    
    @IBAction func changingSpringViewDidTapped(_ sender: SpringButton) {
        
        changeAnimation()
        animationSpringView.animate()
        animationIndex += 1
    }
}

private extension AnimationViewController {
    func changeAnimation() {
        
        let force = randomDoubleNumber()
        let duration = randomDoubleNumber()
        let delay = randomDoubleNumber()
        
        animationSpringView.animation = preset[animationIndex]
        animationSpringView.curve = curve[animationIndex]
        animationSpringView.force = force
        animationSpringView.duration = duration
        animationSpringView.delay = delay
        
        presetLabel.text = "preset: \(preset[animationIndex])"
        curveLabel.text = "curve: \(curve[animationIndex])"
        forceLabel.text = "force: \(force)"
        durationLabel.text = "duration: \(duration)"
        delayLabel.text = "delay: \(delay)"
        
        animationChangeButton.setTitle("Run \(preset[animationIndex + 1])", for: .normal)
    }
    
    func randomDoubleNumber() -> Double {
        let number = Double.random(in: 0.3...1.5)
        return Double(round(100 * number) / 100)
    }
}
