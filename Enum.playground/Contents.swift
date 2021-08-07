import UIKit
/*
 Date: 07 August 2021
 Author: Jignesh Patil
 Topic: Enumeration - Enums
 Def: Are group of related values
 Notes: Enums has to have cases
 
 */

// Exapmle 1:

enum MobileNetworkProviders {
    case Vodacome
    case AirTel
    case MTN
    case Virgin
}

// One of the basic was to use Enums are to use switch statements
// to so something based on case which is been passed on

func getNetworkRating(on networkProviders: MobileNetworkProviders){
    switch networkProviders {
    case .Vodacome:
        print("Place the code to retrieve rating for Vodacome")
    case .AirTel:
        print("Place the code to retrieve rating for AirTel")
    case .MTN:
        print("Place the code to retrieve rating for MTN")
    case .Virgin:
        print("Place the code to retrieve rating for Virgin")
    }
}

// Call the function to retrieve Network Rating

getNetworkRating(on: .AirTel)
