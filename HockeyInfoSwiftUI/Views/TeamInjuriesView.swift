//
//  TeamInjuriesView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/25/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct TeamInjuriesView : View
{
    var teamItem: TeamItem
    
    var body: some View
    {
        Text("Team Injuries View for \(teamItem.teamName)!")
    }
}

#if DEBUG
struct TeamInjuriesView_Previews : PreviewProvider
{
    static var previews: some View
    {
        TeamInjuriesView(teamItem: TeamItem.allTeamItems()[17])
    }
}
#endif
