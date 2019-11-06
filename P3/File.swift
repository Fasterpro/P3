//
//  File.swift
//  P3
//
//  Created by Martin Ménard on 2019-11-04.
//  Copyright © 2019 Martin Ménard. All rights reserved.
//

import Foundation

class Player {
    var player1: String
    var player2: String
    
    init(player1: String, player2: String) {
        self.player1 = player1
        self.player2 = player2
    }
}

class Characters {
    var character: [String] = [ "Characters","BeatMan", "MouseMan", "SmileMan","FantasticMan", "WonderMan", "E.TMan", "SadMan", "SkyMan"]
}

class Weapons {
    var weapon: [String] = [ "weapon1","weapon2", "weapon3", "weapon4","weapon5", "weapon6", "weapon7", "weapon8", "SkyMan"]
}

class Game {
    
}
