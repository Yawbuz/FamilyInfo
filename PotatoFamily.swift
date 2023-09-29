//
//  PotatoFamily.swift
//  FamilyIntro
//
//  Created by shark boy on 9/29/23.
//

import Foundation


enum FamilyMember: String {
    case mom = "mom", pops = "pops", fry = "fry", grandma = "grandma"
    
    var descripton: String {
        switch self {
        case .mom:
           return "mom text"
        case .pops:
           return "pops text"
        case .fry:
           return "fry text"
        case .grandma:
           return "grandma text"
        }
    }
}
