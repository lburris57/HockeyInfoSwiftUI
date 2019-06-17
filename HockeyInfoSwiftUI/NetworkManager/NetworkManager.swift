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
    let session = URLSession.shared
    
    //  Retrieve season schedule for all 31 teams
    func retrieveSeasonSchedule(completion: @escaping (SeasonSchedule) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.SEASON_SCHEDULE_URL))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let seasonSchedule = try! JSONDecoder().decode(SeasonSchedule.self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(seasonSchedule)
                }
            }
        }.resume()
    }
    
    //  Retrieve team standings
    func retrieveStandings(completion: @escaping (NHLStandings) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.STANDINGS_URL))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let nhlStandings = try! JSONDecoder().decode(NHLStandings.self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(nhlStandings)
                }
            }
        }.resume()
    }
    
    //  Retrieve players from all 31 teams
    func retrieveRosters(completion: @escaping ([RosterPlayers]) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.ROSTER_PLAYERS_URL))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let rosterPlayers = try! JSONDecoder().decode([RosterPlayers].self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(rosterPlayers)
                }
            }
        }.resume()
    }
    
    //  Retrieve player statistics
    func retrievePlayerStats(completion: @escaping (PlayerStats) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.PLAYER_STATS_URL))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let playerStats = try! JSONDecoder().decode(PlayerStats.self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(playerStats)
                }
            }
        }.resume()
    }
    
    //  Retrieve player injuries
    func retrievePlayerInjuries(completion: @escaping (PlayerInjuries) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.PLAYER_INJURIES_URL))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let playerInjuries = try! JSONDecoder().decode(PlayerInjuries.self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(playerInjuries)
                }
            }
        }.resume()
    }
    
    //  Retrieve scoring summary for a particular game
    func retrieveScoringSummary(forGameId gameId: Int, completion: @escaping (ScoringSummary) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.SCORING_SUMMARY_URL_PART_1 + "\(gameId)" + Constants.SCORING_SUMMARY_URL_PART_2))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let scoringSummary = try! JSONDecoder().decode(ScoringSummary.self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(scoringSummary)
                }
            }
        }.resume()
    }
    
    //  Retrieve game logs for all the teams
    func retrieveGameLogs(completion: @escaping ([GameLog]) -> ())
    {
        //  Get the JSON data with closure
        session.dataTask(with: createRequest(Constants.GAME_LOGS_URL))
        {
            data, response, err in
            
            if err != nil
            {
                fatalError(err!.localizedDescription)
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200
            {
                let gameLogs = try! JSONDecoder().decode([GameLog].self, from: data)
                
                DispatchQueue.main.async
                {
                    completion(gameLogs)
                }
            }
        }.resume()
    }
    
    //  Return a request populated with the URL and authorization information
    private func createRequest(_ url: String) -> URLRequest
    {
        let url = URL(string: url)
        
        var request = URLRequest(url: url!)
        
        request.addValue(Constants.AUTHORIZATION_VALUE, forHTTPHeaderField: Constants.AUTHORIZATION)
        
        return request
    }
}
