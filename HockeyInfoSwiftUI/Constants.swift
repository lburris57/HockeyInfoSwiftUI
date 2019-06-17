//
//  Constants.swift
//  Hockey Info
//
//  Created by Larry Burris on 2/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation

struct Constants
{
    static let ALL_TEAMS = "ANA,ARI,BOS,BUF,CGY,CAR,CHI,COL,CBJ,DAL,DET,EDM,FLO,LAK,MIN,MTL,NSH,NJD,NYI,NYR,OTT,PHI,PIT,SJS,STL,TBL,TOR,VAN,VGK,WSH,WPJ"
    static let AUTHORIZATION = "Authorization"
    static let USER_ID = "6faa8a21-d219-433a-914b-fcd2d4:MYSPORTSFEEDS"
    static let AUTHORIZATION_VALUE = "Basic " + Constants.USER_ID
    
    //  URLs
    static let SEASON_SCHEDULE_URL = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/games.json"
    static let STANDINGS_URL = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/standings.json"
    static let ROSTER_PLAYERS_URL = "https://api.mysportsfeeds.com/v2.0/pull/nhl/players.json?rosterstatus=assigned-to-roster"
    static let PLAYER_STATS_URL = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/player_stats_totals.json"
    static let PLAYER_INJURIES_URL = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/player_stats_totals.json"
    static let GAME_LOGS_URL = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/team_gamelogs.json?team=\(Constants.ALL_TEAMS)"
    static let SCORING_SUMMARY_URL_PART_1 = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/games/"
    static let SCORING_SUMMARY_URL_PART_2 = "/boxscore.json?teamstats=none&playerstats=none"
    
    //Times and dates
    static let SHORT_DATE_FORMAT = "yyyyMMdd"
    static let LONG_DATE_FORMAT = "EEEE, MMM dd, yyyy"
    static let GMT_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z"
}
