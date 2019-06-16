//
//  NHLSchedule.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import RealmSwift

class NHLSchedule: Object
{
    @objc dynamic var id : Int = 0
    @objc dynamic var date : String = ""
    @objc dynamic var time : String = ""
    @objc dynamic var homeTeam : String = ""
    @objc dynamic var awayTeam : String = "No games scheduled"
    @objc dynamic var playedStatus : String = ""
    @objc dynamic var homeScoreTotal : Int = 0
    @objc dynamic var awayScoreTotal : Int = 0
    @objc dynamic var numberOfPeriods : Int = 0
    @objc dynamic var homeShotsTotal : Int = 0
    @objc dynamic var awayShotsTotal : Int = 0
    @objc dynamic var scheduleStatus : String = ""
    @objc dynamic var currentTimeRemaining : Int = 0
    @objc dynamic var currentPeriod : Int = 0
    @objc dynamic var lastUpdatedOn: String = ""
    @objc dynamic var dateCreated: String = ""
    
    var parentTeam = LinkingObjects(fromType: NHLTeam.self, property: "schedules")
    
    override static func primaryKey() -> String?
    {
        return "id"
    }
}
