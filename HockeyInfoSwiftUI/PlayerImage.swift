//
//  PlayerImage
//  HockeyInfoSwiftUI
//
//  Created by Larry Burris on 6/11/19.
//  Copyright © 2019 Larry Burris. All rights reserved.
//

import SwiftUI

struct PlayerImage : View
{
    var image: Image
    
    var body: some View
    {
        VStack
        {
            //  Team image
            image.resizable().frame(height: 250).minimumScaleFactor(0.25)
            
            //  Player Image
            Image("Ovechkin").resizable().scaledToFit()
                .clipShape(Circle()).background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15).offset(x: 0, y: -90).padding(.bottom, -90)
            
            //  Player Name
            Text("Alexander Ovechkin")
                .font(.system(size:50))
                .fontWeight(.bold)
                .padding(.horizontal)
                .minimumScaleFactor(0.50)
            
            //  Player Jersey Number and Position
            Text("8 LW")
                .font(.system(size:30))
                .fontWeight(.bold)
                .padding(.horizontal)
                .minimumScaleFactor(0.50)
        
            //  Player Information
            VStack(alignment: .leading)
            {
                Text("Birth Date: 09/17/1985").minimumScaleFactor(0.25)
                Text("Age: 33")
                Text("Birth City: Moscow")
                Text("Birth Country: Russia")
                Text("Height: 6' 3\"")
                Text("Weight: 235")
                Text("Status: Available")
                Text("Shoots: Right")
            }
            
            Button(action: {})
            {
                Text("Display Player Details")
                    .padding(.bottom, 20.0)
            }
        }
    }
}

#if DEBUG
struct PlayerImage_Previews : PreviewProvider
{
    static var previews: some View
    {
        Group
        {
            PlayerImage(image: Image("WSH")).previewDevice("iPhone 8+")
            PlayerImage(image: Image("WSH")).previewDevice("iPhone SE")
        }
    }
}
#endif
