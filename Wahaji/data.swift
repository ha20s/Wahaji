//
//  data.swift
//  Wahaji
//
//  Created by Hasna Ahmad on 14/06/1445 AH.
//

import Foundation

struct Stars : Identifiable, Equatable {
    var id = UUID()
    var starType : StarType
    var starName : String
    var Stardescription : String
    var starImg : String
    
    enum StarType{
        case North, South
    }
    
    init(starType: StarType, starName: String, Stardescription: String, staarImg: String) {
        self.starType = starType
        self.starName = starName
        self.Stardescription = Stardescription
        self.starImg = staarImg
    }
    
    static func == (lhs: Stars, rhs: Stars) -> Bool {
        return lhs.id == rhs.id
    }

}

extension Stars{
    static let sampleStar : [Stars] = [
        Stars(starType: .North, starName: NSLocalizedString("QueenStar", comment: ""), Stardescription: NSLocalizedString("QueenDes", comment: "") , staarImg: "queen-cassiopeia"),
        Stars(starType: .North, starName: NSLocalizedString("AquariusStar", comment: ""), Stardescription: NSLocalizedString("AquariusDes", comment: "") , staarImg: "aquarius"),
        
        // those whoes after that is not updated
        Stars(starType: .North, starName: NSLocalizedString("cancer", comment: ""), Stardescription: NSLocalizedString("QueenDes", comment: "") , staarImg: "cancer"),
        Stars(starType: .North, starName: NSLocalizedString("harp", comment: ""), Stardescription: NSLocalizedString("QueenDes", comment: "") , staarImg: "harp"),
        Stars(starType: .North, starName: NSLocalizedString("canis-major", comment: ""), Stardescription: NSLocalizedString("QueenDes", comment: "") , staarImg: "canis-major"),
      
   
        Stars(starType: .South, starName: NSLocalizedString("TaurusStar", comment: ""), Stardescription: NSLocalizedString("TaurusDes", comment: ""), staarImg: "taurus"),
        Stars(starType: .South, starName: NSLocalizedString("CrowStar", comment: ""), Stardescription: NSLocalizedString("CrowDes", comment: ""), staarImg: "crow"),
        
        // thoes whoes after that is not updated
        Stars(starType: .South, starName: NSLocalizedString("aries", comment: ""), Stardescription: NSLocalizedString("TaurusDes", comment: ""), staarImg: "aries"),
        Stars(starType: .South, starName: NSLocalizedString("Gemini", comment: ""), Stardescription: NSLocalizedString("TaurusDes", comment: ""), staarImg: "Gemini"),
        Stars(starType: .South, starName: NSLocalizedString("triangulum-australe", comment: ""), Stardescription: NSLocalizedString("TaurusDes", comment: ""), staarImg: "triangulum-australe"),
    ]
}
