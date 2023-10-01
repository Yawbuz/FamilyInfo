//
//  PotatoFamily.swift
//  FamilyIntro
//
//  Created by shark boy on 9/29/23.
//

import Foundation



// forgot to turn this into a struct. I should be writing more metacode
    // enum is all that is needed actually! // do i?? 
enum Person: String {
    case mom = "Mom", pops = "Pops", fry = "Fry", grandma = "Grandma"
    
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

// gotta make a struct or class for a family member of the person type (lol)
// I will take a shortcut and just make a family member variable object(actually it's also a class haha)
// nevermind! I cant do this, because var is used within method scope

