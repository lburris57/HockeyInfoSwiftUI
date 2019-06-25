//
//  ConferenceStandingsView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/24/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct ConferenceStandingsView : View
{
    var body: some View
    {
        VStack
        {
            Image(systemName: "c.circle.fill")
            Text("Conference Standings!")
        }
    }
}

#if DEBUG
struct ConferenceStandingsView_Previews : PreviewProvider
{
    static var previews: some View
    {
        ConferenceStandingsView()
    }
}
#endif
