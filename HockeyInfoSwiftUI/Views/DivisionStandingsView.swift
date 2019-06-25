//
//  DivisionStandingsView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/24/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct DivisionStandingsView : View
{
    var body: some View
    {
        VStack
        {
            Image(systemName: "d.circle.fill")
            Text("Division Standings!")
        }
    }
}

#if DEBUG
struct DivisionStandingsView_Previews : PreviewProvider
{
    static var previews: some View
    {
        DivisionStandingsView()
    }
}
#endif
