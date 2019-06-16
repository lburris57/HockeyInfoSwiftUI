//
//  SkatingData.swift
//  Hockey Info SwiftUI
//
//  Created by Larry Burris on 06/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import SwiftUI

struct SkatingData: Codable, Hashable, Identifiable
{
    var id = UUID()
    var plusMinus: Int?
    var shots: Int?
    var shotPercentage: Double?
    var blockedShots: Int?
    var hits: Int?
    var faceoffs: Int?
    var faceoffWins: Int?
    var faceoffLosses: Int?
    var faceoffPercent: Double?
    
    private enum CodingKeys : String, CodingKey
    {
        case plusMinus = "plusMinus"
        case shots = "shots"
        case shotPercentage = "shotPercentage"
        case blockedShots = "blockedShots"
        case hits = "hits"
        case faceoffs = "faceoffs"
        case faceoffWins = "faceoffWins"
        case faceoffLosses = "faceoffLosses"
        case faceoffPercent = "faceoffPercent"
    }
}
