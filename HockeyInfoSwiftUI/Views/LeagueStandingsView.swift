//
//  LeagueStandingsView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/24/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct LeagueStandingsView : View
{
    var body: some View
    {
        VStack
        {
            Image(systemName: "l.circle.fill")
            Text("League Standings!")
        }
    }
}

#if DEBUG
struct LeagueStandingsView_Previews : PreviewProvider
{
    static var previews: some View
    {
        LeagueStandingsView()
    }
}
#endif
