//
//  Park.swift
//  Parks
//
//  Created by Fran Jukic on 21/12/2019.
//  Copyright © 2019 Fran Jukic. All rights reserved.
//

import SwiftUI

struct Park: Identifiable {
    var id = UUID()
    var name: String
    var country: String
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb"}
}

// postavljamo informacije o varijabli(jer ćemo ih koristiti više puta)
let testData = [
    Park(name: "Krka", country: "Croatia"),
    Park(name: "Plitvička jezera", country: "Croatia"),
    Park(name: "Kornati", country: "Croatia"),
    Park(name: "Paklenica", country: "Croatia")
]
