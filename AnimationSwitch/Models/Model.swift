//
//  Model.swift
//  AnimationSwitch
//
//  Created by Pavel Gribachev on 26.01.2024.
//

import Foundation
import SpringAnimation

struct MainAnimation {
    
    let preset = AnimationPreset.allCases.map { $0.rawValue }
    
//    let preset = [Preset]()
//    
//    func getPreset() -> [String] {
//        
//        let stringPreset = preset.map { $0.rawValue }
//        return stringPreset
//        
//    }
}

enum Preset: String {
    case pop = "pop"
    case slideLeft = "slideLeft"
    case slideRight = "slideRight"
    case slideDown = "slideDown"
    case slideUp = "slideUp"
    case squeezeLeft = "squeezeLeft"
    case squeezeRight = "squeezeRight"
    case squeezeDown = "squeezeDown"
    case squeezeUp = "squeezeUp"
    case fadeIn = "fadeIn"
    case fadeOut = "fadeOut"
    case fadeOutIn = "fadeOutIn"
    case fadeInLeft = "fadeInLeft"
    case fadeInRight = "fadeInRight"
    case fadeInDown = "fadeInDown"
    case fadeInUp = "fadeInUp"
    case zoomIn = "zoomIn"
    case zoomOut = "zoomOut"
    case fall = "fall"
    case shake = "shake"
    case flipX = "flipX"
    case flipY = "flipY"
    case morph = "morph"
    case squeeze = "squeeze"
    case flash = "flash"
    case wobble = "wobble"
    case swing = "swing"
}
