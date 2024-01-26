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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func changingSpringViewDidTapped(_ sender: SpringButton) {
        
    }
    
}

