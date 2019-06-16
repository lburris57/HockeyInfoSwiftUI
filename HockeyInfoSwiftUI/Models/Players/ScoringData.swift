//
//  ScoringData.swift
//  Hockey Info SwiftUI
//
//  Created by Larry Burris on 06/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import SwiftUI

struct ScoringData: Codable, Hashable, Identifiable
{
    var id = UUID()
    var goals: Int?
    var assists: Int?
    var points: Int?
    var hatTricks: Int?
    var powerplayGoals: Int?
    var powerplayAssists: Int?
    var powerplayPoints: Int?
    var shorthandedGoals: Int?
    var shorthandedAssists: Int?
    var shorthandedPoints: Int?
    var gameWinningGoals: Int?
    var gameTyingGoals: Int?
    
    private enum CodingKeys : String, CodingKey
    {
        case goals = "goals"
        case assists = "assists"
        case points = "points"
        case hatTricks = "hatTricks"
        case powerplayGoals = "powerplayGoals"
        case powerplayAssists = "powerplayAssists"
        case powerplayPoints = "powerplayPoints"
        case shorthandedGoals = "shorthandedGoals"
        case shorthandedAssists = "shorthandedAssists"
        case shorthandedPoints = "shorthandedPoints"
        case gameWinningGoals = "gameWinningGoals"
        case gameTyingGoals = "gameTyingGoals"
    }
}
