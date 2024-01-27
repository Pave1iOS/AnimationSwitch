//
//  Model.swift
//  AnimationSwitch
//
//  Created by Pavel Gribachev on 26.01.2024.
//

import Foundation
import SpringAnimation

struct PackAnimation {
    let preset = AnimationPreset.allCases.map { $0.rawValue }
    let curve = AnimationCurve.allCases.map { $0.rawValue }
    
    func getAnimation() -> [CubeAnimation] {
        var array: [CubeAnimation] = []
        
        for _ in 1...preset.count {
            array.append(
                CubeAnimation(
                    preset: preset.randomElement() ?? "",
                    curve: curve.randomElement() ?? "",
                    force: randomDoubleNumber(),
                    duration: randomDoubleNumber(),
                    delay: randomDoubleNumber()
                )
            )
        }
        
        return array
    }
}

struct CubeAnimation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

func randomDoubleNumber() -> Double {
    let number = Double.random(in: 0.30...2.22)
    return Double(round(100 * number) / 100)
}
