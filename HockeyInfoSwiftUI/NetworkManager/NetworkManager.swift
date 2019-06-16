//
//  NetworkManager.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation

class NetworkManager
{
    let teams = "ANA,ARI,BOS,BUF,CGY,CAR,CHI,COL,CBJ,DAL,DET,EDM,FLO,LAK,MIN,MTL,NSH,NJD,NYI,NYR,OTT,PHI,PIT,SJS,STL,TBL,TOR,VAN,VGK,WSH,WPJ"
    let authorizationValue = "Basic 6faa8a21-d219-433a-914b-fcd2d4:MYSPORTSFEEDS"
    let session = URLSession.shared
    
    //  Retrieve season schedule for all 31 teams
    func retrieveSeasonSchedule(completion: @escaping (SeasonSchedule) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/games.json"
        
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let seasonSchedule = try! JSONDecoder().decode(SeasonSchedule.self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(seasonSchedule)
            }
        }.resume()
    }
    
    //  Retrieve team standings
    func retrieveStandings(completion: @escaping (NHLStandings) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/standings.json"
        
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let nhlStandings = try! JSONDecoder().decode(NHLStandings.self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(nhlStandings)
            }
        }.resume()
    }
    
    //  Retrieve players from all 31 teams
    func retrieveRosters(completion: @escaping ([RosterPlayers]) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/players.json?rosterstatus=assigned-to-roster"
            
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let rosterPlayers = try! JSONDecoder().decode([RosterPlayers].self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(rosterPlayers)
            }
        }.resume()
    }
    
    //  Retrieve player statistics
    func retrievePlayerStats(completion: @escaping (PlayerStats) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/player_stats_totals.json"
        
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let playerStats = try! JSONDecoder().decode(PlayerStats.self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(playerStats)
            }
        }.resume()
    }
    
    //  Retrieve player injuries
    func retrievePlayerInjuries(completion: @escaping (PlayerInjuries) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/player_stats_totals.json"
        
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let playerInjuries = try! JSONDecoder().decode(PlayerInjuries.self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(playerInjuries)
            }
        }.resume()
    }
    
    //  Retrieve scoring summary for a particular game
    func retrieveScoringSummary(forGameId gameId: Int, completion: @escaping (ScoringSummary) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/games/\(gameId)/boxscore.json?teamstats=none&playerstats=none"
        
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let scoringSummary = try! JSONDecoder().decode(ScoringSummary.self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(scoringSummary)
            }
        }.resume()
    }
    
    //  Retrieve game logs for all the teams
    func retrieveGameLogs(completion: @escaping ([GameLog]) -> ())
    {
        let urlString = "https://api.mysportsfeeds.com/v2.0/pull/nhl/2018-2019-regular/player_stats_totals.json"
        
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(urlString))
        {
            data, _, _ in
            
            let gameLogs = try! JSONDecoder().decode([GameLog].self, from: data!)
            
            DispatchQueue.main.async
            {
                completion(gameLogs)
            }
        }.resume()
    }
    
    private func createRequest(_ url: String) -> URLRequest
    {
        let url = URL(string: url)
        
        var request = URLRequest(url: url!)
        
        request.addValue(authorizationValue, forHTTPHeaderField: "Authorization")
        
        return request
    }
}
