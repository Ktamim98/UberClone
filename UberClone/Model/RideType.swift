//
//  RideType.swift
//  UberClone
//
//  Created by Tamim Khan on 22/6/23.
//

import Foundation


enum RideType: Int, CaseIterable, Identifiable{
    case uberX
    case black
    case uberXL
    
    
    var id: Int {return rawValue}
    
    var description: String{
        switch self{
        case .uberX: return "uberX"
        case .black: return "black"
        case .uberXL: return "uberXL"
        }
        
    }
    
    var imageName: String{
        switch self{
        case .uberX: return "ubercar"
        case .black: return "blackcar"
        case .uberXL: return "xl"
        }
    }
}
