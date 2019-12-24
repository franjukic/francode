//
//  ParkDetails.swift
//  Parks
//
//  Created by Fran Jukic on 22/12/2019.
//  Copyright © 2019 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ParkDetails: View {
    // radimo park objekt od Park filea
    let park: Park
    
    // radimo varijablu za zoom
    @State private var zoomed = false
    
    var body: some View {
        ZStack {
            Image(park.imageName)
            .resizable()
            // AR ovisi o dodiru
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .padding()
            .shadow(radius: 10)
            .navigationBarTitle(Text(park.name), displayMode: .inline)
            // ako dotaknemo sliku,ona se zumira
            .onTapGesture {
                withAnimation{ self.zoomed.toggle() }
                
            }
        }
    }
}

struct ParkDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {ParkDetails(park: testData[0])}
    }
}
