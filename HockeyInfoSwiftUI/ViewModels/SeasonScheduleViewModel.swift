//
//  SeasonScheduleViewModel.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/16/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import Foundation
import Combine
import SwiftUI

final class SeasonScheduleViewModel: BindableObject
{
    var didChange = PassthroughSubject<SeasonScheduleViewModel, Never>()
    var seasonSchedule: SeasonSchedule?
    {
        didSet
        {
            didChange.send(self)
        }
    }
    
    init()
    {
        fetchSeasonSchedule()
    }
    
    private func fetchSeasonSchedule()
    {
        NetworkManager().retrieveSeasonSchedule
        {
            self.seasonSchedule = $0
        }
    }
}
