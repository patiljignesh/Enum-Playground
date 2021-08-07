import UIKit
/*
 Date: 07 August 2021
 Author: Jignesh Patil
 Topic: Enumeration - Enums
 Def: Are group of related values
 Notes: Enums has to have cases
 
 */

// Exapmle 1: Basic

enum MobileNetworkProviders {
    case Vodacome
    case AirTel
    case MTN
    case Virgin
}

// One of the basic way to use Enums are to use switch statements
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

//getNetworkRating(on: .AirTel)

//_______________________________

// Exapmle 2: Raw Values
// Comment out other enum to prevent duplicate declaration

enum MobileNetworkProvidersReviews: String {
    case Vodacome   = "Best network"
    case AirTel     = "It's managable"
    case MTN        = "Acceptable"
    case Virgin     = "New but unstable"
}

// Call the function to retrieve Network Reviews

func getNetworkReviews(on networkProviderReview: MobileNetworkProvidersReviews) {
    print(networkProviderReview.rawValue)
}

//getNetworkReviews(on: .MTN)

//_______________________________

// Exapmle 3: CaseIterable
// Comment out other enum to prevent duplicate declaration
// Makes the casese in collections
enum MobileNetworkProvidersReviewsCaseIterable: String, CaseIterable {
    case Vodacome   = "Best network"
    case AirTel     = "It's managable"
    case MTN        = "Acceptable"
    case Virgin     = "New but unstable"
}


print(MobileNetworkProvidersReviewsCaseIterable.allCases.count)

// Able to access all cases
for mobileNetwork in MobileNetworkProvidersReviewsCaseIterable.allCases {
    print(mobileNetwork.rawValue)
}

//_______________________________

// Exapmle 4: Associate Values
// Comment out other enum to prevent duplicate declaration

enum MobileNetworkProviderSubscribers {
    case Vodacome (users: Int)
    case AirTel (subscribers: Int)
    case MTN
    case Virgin
}


func getNetworkProviderUserbase(for mobileNetworkProviders: MobileNetworkProviderSubscribers) {
    switch mobileNetworkProviders {
    case .Vodacome(let users) where users > 500_000 :
        print("Follow base is massive!")
    case .AirTel(let subs) where subs > 100_000 :
        print("Follow base is okay")
    case .MTN, .Virgin, .AirTel, .Vodacome :
        print("Poor follow base")
    }
}

getNetworkProviderUserbase(for: .Vodacome(users: 450_000))

