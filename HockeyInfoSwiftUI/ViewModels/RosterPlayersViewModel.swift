//
//  RosterPlayersViewModel.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import Combine
import SwiftUI

final class RosterPlayersViewModel: BindableObject
{
    var didChange = PassthroughSubject<RosterPlayersViewModel, Never>()
    var players = [RosterPlayers]()
    {
        didSet
        {
            didChange.send(self)
        }
    }
    
    init()
    {
        fetchRosterPlayers()
    }
    
    private func fetchRosterPlayers()
    {
        NetworkManager().retrieveRosters
        {
            self.players = $0
        }
    }
}
