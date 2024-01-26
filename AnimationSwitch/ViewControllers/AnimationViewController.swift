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
    
    @IBOutlet weak var animationSpringView: SpringView!
    @IBOutlet weak var changingAnimationButton: SpringButton!
    
    private let animation = MainAnimation().preset
    private var animationIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        animation.forEach { print($0) }
    }
    
    @IBAction func changingSpringViewDidTapped(_ sender: SpringButton) {
        
        changeAnimation()
        animationSpringView.animate()
        animationIndex += 1
    }
}

private extension AnimationViewController {
    func changeAnimation() {
        animationSpringView.animation = String(animation[animationIndex])
    }
}
