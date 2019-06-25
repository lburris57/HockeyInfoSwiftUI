//
//  MainMenuView.swift
//  HockeyInfoSwiftUI
//
//  This view displays the main menu items in a list format
//
//  Created by Larry Burris on 6/9/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct MainMenuView : View
{
    var body: some View
    {
        return NavigationView
        {
            List
            {
                NavigationButton(destination: SeasonScheduleView())
                {
                    MainMenuRow(mainMenuItem: MainMenuItem(description: "Season Schedule"))
                }
                
                NavigationButton(destination: TeamInformationView())
                {
                    MainMenuRow(mainMenuItem: MainMenuItem(description: "Team Information"))
                }
                
                NavigationButton(destination: PlayerInformationView())
                {
                    MainMenuRow(mainMenuItem: MainMenuItem(description: "Player Information"))
                }
                
                NavigationButton(destination: StandingsView())
                {
                    MainMenuRow(mainMenuItem: MainMenuItem(description: "Standings"))
                }
                
                NavigationButton(destination: ScoresView())
                {
                    MainMenuRow(mainMenuItem: MainMenuItem(description: "Scores"))
                }
            }
        }.navigationBarTitle(Text("Hockey Info"), displayMode: .inline)
    }
}
    

#if DEBUG
struct ContentView_Previews : PreviewProvider
{
    static var previews: some View
    {
        MainMenuView()
    }
}
#endif
