//
//  PlayerInformationView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/25/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct PlayerInformationView : View
{
    var body: some View
    {
        NavigationButton(destination: PlayerDetailView(image: Image("WSH")))
        {
            Text("Go to player detail view!")
        }
    }
}

#if DEBUG
struct PlayerInformationView_Previews : PreviewProvider
{
    static var previews: some View
    {
        PlayerInformationView()
    }
}
#endif
