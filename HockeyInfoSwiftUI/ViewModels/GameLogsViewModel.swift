//
//  GameLogsViewModel.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import Combine
import SwiftUI

final class GameLogsViewModel: BindableObject
{
    var didChange = PassthroughSubject<GameLogsViewModel, Never>()
    var gameLogs = [GameLog]()
    {
        didSet
        {
            didChange.send(self)
        }
    }
    
    init()
    {
        fetchGameLogs()
    }
    
    private func fetchGameLogs()
    {
        NetworkManager().retrieveGameLogs
        {
            self.gameLogs = $0
        }
    }
}
