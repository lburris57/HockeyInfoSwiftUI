//
//  NHLTeam.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import RealmSwift

class NHLTeam : Object
{
    @objc dynamic var id : Int = 0
    @objc dynamic var abbreviation : String = ""
    @objc dynamic var city : String = ""
    @objc dynamic var name : String = ""
    @objc dynamic var division : String = ""
    @objc dynamic var conference : String = ""
    @objc dynamic var dateCreated: String = ""
    
    var players = List<NHLPlayer>()
    var standings = List<TeamStandings>()
    var statistics = List<TeamStatistics>()
    var schedules = List<NHLSchedule>()
    var playerInjuries = List<NHLPlayerInjury>()
    var gameLogs = List<NHLGameLog>()
    
    override static func primaryKey() -> String?
    {
        return "id"
    }
}
