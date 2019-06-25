//
//  StandingsView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/24/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct StandingsView : View
{
    var body: some View
    {
        TabbedView()
        {
            DivisionStandingsView().tabItemLabel(VStack{
                Image("text-align-left-7")
                Text("Division")}).tag(1)
            ConferenceStandingsView().tabItemLabel(VStack{
                Image("text-align-justify-7")
                Text("Conference")}).tag(2)
            LeagueStandingsView().tabItemLabel(VStack{
                Image("text-align-right-7")
                Text("League")}).tag(3)
        }
    }
}

#if DEBUG
struct StandingsView_Previews : PreviewProvider
{
    static var previews: some View
    {
        StandingsView()
    }
}
#endif
