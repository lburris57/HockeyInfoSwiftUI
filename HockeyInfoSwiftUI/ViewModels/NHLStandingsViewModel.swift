//
//  NHLStandingsViewModel.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import Combine
import SwiftUI

final class NHLStandingsViewModel: BindableObject
{
    var didChange = PassthroughSubject<NHLStandingsViewModel, Never>()
    var standings: NHLStandings?
    {
        didSet
        {
            didChange.send(self)
        }
    }
    
    init()
    {
        fetchStandings()
    }
    
    private func fetchStandings()
    {
        NetworkManager().retrieveStandings
        {
            self.standings = $0
        }
    }
}
