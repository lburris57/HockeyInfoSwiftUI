//
//  TeamInformationView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/25/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct TeamInformationView : View
{
    var body: some View
    {
        TabbedView()
        {
            TeamRosterView().tabItemLabel(VStack{
                Image("icons8-queue")
                Text("Roster")}).tag(1)
            TeamInjuriesView().tabItemLabel(VStack{
                Image("icons8-broken_bone")
                Text("Injuries")}).tag(2)
            TeamStatsView().tabItemLabel(VStack{
                Image("icons8-pie_chart")
                Text("Stats")}).tag(3)
            GamesRemainingView().tabItemLabel(VStack{
                Image("icons8-hashtag_large")
                Text("Games Left")}).tag(4)
            CompletedGamesView().tabItemLabel(VStack{
                Image("icons8-rubiks_cube")
                Text("Completed Games")}).tag(5)
        }
    }
}

#if DEBUG
struct TeamInformationView_Previews : PreviewProvider
{
    static var previews: some View
    {
        TeamInformationView()
    }
}
#endif
