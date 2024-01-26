//
//  Model.swift
//  AnimationSwitch
//
//  Created by Pavel Gribachev on 26.01.2024.
//

import Foundation
import SpringAnimation

struct MainAnimation {
    let preset = AnimationPreset.allCases.map { $0.rawValue }.shuffled()
    let curve = AnimationCurve.allCases.map { $0.rawValue }.shuffled()
}
