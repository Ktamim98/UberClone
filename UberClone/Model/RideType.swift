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
    
    var baseFare: Double{
        switch self{
        case .uberX: return 5
        case .black: return 20
        case .uberXL: return 10
        }
    }
    
    
    func computePrice(for distanceInMeters: Double) -> Double{
        let distanceInMiles = distanceInMeters / 1600
        
        switch self{
        case .uberX: return distanceInMiles * 1.5 + baseFare
        case .black: return distanceInMiles * 2.0 + baseFare
        case .uberXL: return distanceInMiles * 1.75 + baseFare
        }
    }
}
