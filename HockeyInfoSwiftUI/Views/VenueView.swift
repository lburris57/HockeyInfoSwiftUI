//
//  VenueView.swift
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/30/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//
import SwiftUI

struct VenueView : View
{
    var venue: Venue
    
    var body: some View
    {
        VStack
        {
            HStack
            {
                Image(venue.imageName).resizable().frame(width: 40, height: 35).aspectRatio(contentMode: .fit)
                Text(venue.teamName).font(.headline).minimumScaleFactor(0.25)
            }
            
            Image(venue.venueName).resizable().frame(height: 250).padding(.horizontal)
            Text(venue.venueName).font(.headline)
            Text(venue.address).font(.subheadline).bold()
            Text("Seats \(venue.seating)").font(.subheadline).bold()
        }
    }
}

#if DEBUG
struct VenueView_Previews : PreviewProvider
{
    static var previews: some View
    {
        VenueView(venue: Venue.allVenues()[8])
    }
}
#endif
