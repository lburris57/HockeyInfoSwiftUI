//
//  MainMenuRow.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/24/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct MainMenuRow : View
{
    var mainMenuItem: MainMenuItem
    
    var body: some View
    {
        Text(mainMenuItem.description)
    }
}

struct MainMenuItem : Identifiable
{
    var id = UUID()
    var description = ""
}

