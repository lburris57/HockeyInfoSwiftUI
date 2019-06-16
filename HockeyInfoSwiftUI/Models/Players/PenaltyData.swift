//
//  PenaltyData.swift
//  Hockey Info SwiftUI
//
//  Created by Larry Burris on 06/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import SwiftUI

struct PenaltyData: Codable, Hashable, Identifiable
{
    var id = UUID()
    var penalties: Int?
    var penaltyMinutes: Int?
    
    private enum CodingKeys : String, CodingKey
    {
        case penalties = "penalties"
        case penaltyMinutes = "penaltyMinutes"
    }
}
