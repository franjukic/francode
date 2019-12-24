//
//  ContentView.swift
//  Parks
//
//  Created by Fran Jukic on 21/12/2019.
//  Copyright © 2019 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Park file stavljamo u objekt kako bi ga mogli koristiti ovdje u ContentViewu
    var parks: [Park] = []
    
    var body: some View {
        // radimo NV kako bismo mogli napraviti gumb
        NavigationView {
            // radimo listu
             List(parks) { park in
                // od PD radimo gumb
                NavigationLink(destination: ParkDetails(park: park)) {
                    Image(park.imageName)
                        .resizable()
                        .frame(width: 50, height: 45)
                        .cornerRadius(8)
                        .shadow(radius: 20)
                    
                    VStack(alignment: .leading) {
                        Text(park.name)
                        Text(park.country)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                }
                       
            }
        .navigationBarTitle(Text("Parkovi"))
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(parks: testData)
    }
}
