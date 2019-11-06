//
//  main.swift
//  P3
//
//  Created by Martin Ménard on 2019-11-04.
//  Copyright © 2019 Martin Ménard. All rights reserved.
//

import Foundation
//
//  P3GameTemplate.swift
//  swift P3GameTemplate.swift
//
//  Created by Martin Ménard on 2019-10-30.

import Foundation

// MARK: - Var
//======================
var player1 = "player one"
var player2 = "player two"
var characters = [ "Characters","BeatMan", "MouseMan", "SmileMan","FantasticMan", "WonderMan", "E.TMan", "SadMan", "SkyMan"]
var randomP = Int.random(in: 1 ... 2)

var randomAttackMiss = Int.random(in: 1 ... 5)
var randomCaseWeapons = Int.random(in: 1 ... 3)
var randomWeaponsExtra = Int.random(in: 1 ... 3)

var weapons = [ "weapon1", "weapon2", "weapon3", "weapon4", "weapon5", "weapont6", "weapon7", "weapon8"]
var weaponsattack = [ 5, 4, 6, 4, 5, 6, 7, 5]
var recoverenergy = [ 4, 3, 5, 4, 6, 3, 3, 5]

var energy = 100
var playerturn1 = ""
var playerturn2 = ""
var selectcharactersP1Int = [Int]()
var selectcharactersP2Int = [Int]()
var energyP1 = [ 0, 0, 0]
var energyP2 = [ 0, 0, 0]
var selectcharactersP1 = [String]()
var selectcharactersP2 = [String]()
var howlonggame = 0
var recovercount = 0
var numberofgameplayed = 0
var winP1 = 0
var winP2 = 0


// MARK: - Func

func randomStartPlayer() {
    randomP = Int.random(in: 1 ... 2)
    if randomP == 1 {
        playerturn1 = ("\(player1)")
        playerturn2 = ("\(player2)")
    } else if randomP == 2 {
        playerturn1 = ("\(player2)")
        playerturn2 = ("\(player1)")
    }
}


func presentMenu() {
    print("\n"
        + "\n"
        + "⚔️  Fight Game Retro 1970 ⚔️"
        + "\n"
        + "\n"
        + "\n press 1 enter to start the game"
        + "\n1. 🤸‍♂️  Play Game"
        + "\n"
        + "\n Quit the game 'cmd + q'"
        + "\n"
        + "\n A FrenchGame Factory GAME by Fasterpro"
        + "\n - ")
    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1": // Ajouter une nouvelle activité
            namecharacters()
        default:
            
            print("Try Again invalid input")
            presentMenu()
        }
    }
}

// MARK: - Enter Data

func namecharacters() {
    print("\n"
        + "SELECT THE PLAYER NAME TO RENAME"
        + "\n1. 🤸‍♂️  Name Player 1 = \(player1)"
        + "\n2. 🏦  Name Player 2 = \(player2)"
        + "\n3. Select Characters"
        + "\n4. Return to Menu"
        + "\n")
    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1": // Ajouter une nouvelle activité
            nameP1()
        case "2": // Consulter la banque
            nameP2()
        case "3": // Consulter la banque
           selectCharactersP1C1()
        case "4": // Consulter la banque
                presentMenu()
            
        default:
            print("Try Again invalid input")
            namecharacters()
        }
    }
}

func nameP1() {
    print("\n"
        + "\n What's the name of Player 1?"
        + "\n")
        player1 = readLine() ?? "Player 1"
        if player1 == "" {
            return nameP1()
        }else {
            return namecharacters()
           }
}

func nameP2() {
    print("\n"
        + "What's the name of Player 2?"
        + "\n")
        player2 = readLine() ?? "Player 2"
    if player2 == "" {
        return nameP2()
    }else {
        return namecharacters()
       }
    }

func selectCharactersPrintP1() {
    print("\n"
        + "\(player1) select Your next character."
        + "\n"
        + "\n1. BeatMan      2. MouseMan     3. SmileMan     4. FantasticMan"
        + "\n5. WonderMan    6. E.TMan       7. SadMan       8. SkyMan"
        + "\n")
}
func selectCharactersPrintP2() {
    print("\n"
        + "\(player2) select Your next character."
        + "\n"
        + "\n1. BeatMan      2. MouseMan     3. SmileMan     4. FantasticMan"
        + "\n5. WonderMan    6. E.TMan       7. SadMan       8. SkyMan"
        + "\n")
}

func selectCharactersP1C1() {
        selectCharactersPrintP1()
    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        if let int = Int(choice) {
        switch choice {
        case "1": // Nourrir les animaux
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "2": // Vendre les produits
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "3": // Traire les vaches
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "4": // Moissonner
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "5": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "6": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "7": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        case "8": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 0)
            selectcharactersP1.insert(choice, at : 0)
            SelectCharactersP2C1()
        default:
            print("TRY AGAIN ERROR INPUT")
           selectCharactersP1C1()
        }
    }
    }
}


func SelectCharactersP2C1() {
         print("\n \(player1) Choice 1: \(selectcharactersP1Int[0]) \(characters[selectcharactersP1Int[0]])")
        selectCharactersPrintP2()
    // On récupère la réponse de l'utilisateur
     if let choice = readLine() {
           if let int = Int(choice) {
        switch choice {
        case "1": // Nourrir les animaux
            selectcharactersP2Int.insert(int, at : 0)
             selectcharactersP2.insert(choice, at : 0)
            if selectcharactersP1[0] == choice {
                print("Player 1 have this characters take another one")
                SelectCharactersP2C1()
            }else {
                    SelectCharactersP1C2()
            }
        case "2": // Vendre les produits
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                         SelectCharactersP1C2()
                 }
        case "3": // Traire les vaches
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                         SelectCharactersP1C2()
                 }
        case "4": // Moissonner
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                         SelectCharactersP1C2()
                 }
        case "5": // Tondre les moutons
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                         SelectCharactersP1C2()
                 }
        case "6": // Tondre les moutons
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                         SelectCharactersP1C2()
                 }
        case "7": // Tondre les moutons
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                         SelectCharactersP1C2()
                 }
        case "8": // Tondre les moutons
                   selectcharactersP2Int.insert(int, at : 0)
                   selectcharactersP2.insert(choice, at : 0)
                 if selectcharactersP1[0] == choice {
                     print("Player 1 have this characters take another one")
                    SelectCharactersP2C1()
                 }else {
                    SelectCharactersP1C2()
            }
        default:
            print("TRY AGAIN ERROR INPUT")
           SelectCharactersP2C1()
        }
    }
    }
}

func SelectCharactersP1C2() {
    print("\n \(player1) Choice 1: \(selectcharactersP1Int[0]) \(characters[selectcharactersP1Int[0]])")
    print("\n \(player2) Choice 1: \(selectcharactersP2Int[0]) \(characters[selectcharactersP2Int[0]])")
        selectCharactersPrintP1()
    // On récupère la réponse de l'utilisateur
         if let choice = readLine() {
          if let int = Int(choice) {
        switch choice {
        case "1": // Nourrir les animaux
            selectcharactersP1Int.insert(int, at : 1)
            selectcharactersP1.insert(choice, at : 1)
            if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                print("This Characters is already use")
                SelectCharactersP1C2()
            }else {
                    SelectCharactersP2C2()
            }
        case "2": // Vendre les produits
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        case "3": // Traire les vaches
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        case "4": // Moissonner
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        case "5": // Tondre les moutons
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        case "6": // Tondre les moutons
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        case "7": // Tondre les moutons
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        case "8": // Tondre les moutons
             selectcharactersP1Int.insert(int, at : 1)
                   selectcharactersP1.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice{
                     print("This Characters is already use")
                    SelectCharactersP1C2()
                 }else {
                         SelectCharactersP2C2()
                 }
        default:
            print("TRY AGAIN ERROR INPUT")
           SelectCharactersP1C2()
        }
    }
    }
}

func SelectCharactersP2C2() {
    print("\n \(player1) Choice 1: \(selectcharactersP1Int[0]) \(characters[selectcharactersP1Int[0]])"
    +     "\n Choice 2: \(selectcharactersP1Int[1]) \(characters[selectcharactersP1Int[1]])")
    print("\n \(player2) Choice 1: \(selectcharactersP2Int[0]) \(characters[selectcharactersP2Int[0]])")
        selectCharactersPrintP2()
    // On récupère la réponse de l'utilisateur
       if let choice = readLine() {
           if let int = Int(choice) {
        switch choice {
        case "1": // Nourrir les animaux
            selectcharactersP2Int.insert(int, at : 1)
            selectcharactersP2.insert(choice, at : 1)
            if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice{
                print("This Characters is already use")
                SelectCharactersP2C2()
            }else {
                    SelectCharactersP1C3()
            }
        case "2": // Vendre les produits
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                   if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        case "3": // Traire les vaches
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                   if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        case "4": // Moissonner
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        case "5": // Tondre les moutons
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        case "6": // Tondre les moutons
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        case "7": // Tondre les moutons
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        case "8": // Tondre les moutons
             selectcharactersP2Int.insert(int, at : 1)
                   selectcharactersP2.insert(choice, at : 1)
                if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP2C2()
                 }else {
                         SelectCharactersP1C3()
                 }
        default:
            print("TRY AGAIN ERROR INPUT")
           SelectCharactersP2C2()
            }
        }
    }
}

func SelectCharactersP1C3() {
    print("\n \(player1) Choice 1: \(selectcharactersP1Int[0]) \(characters[selectcharactersP1Int[0]])"
    +     "\n Choice 2: \(selectcharactersP1Int[1]) \(characters[selectcharactersP1Int[1]])")
    print("\n \(player2) Choice 1: \(selectcharactersP2Int[0]) \(characters[selectcharactersP2Int[0]])"
          +     "\n Choice 2: \(selectcharactersP2Int[1]) \(characters[selectcharactersP2Int[1]])")
        selectCharactersPrintP1()
    // On récupère la réponse de l'utilisateur
       if let choice = readLine() {
           if let int = Int(choice) {
        switch choice {
        case "1": // Nourrir les animaux
            selectcharactersP1Int.insert(int, at : 2)
            selectcharactersP1.insert(choice, at : 2)
            if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                print("This Characters is already use")
                SelectCharactersP1C3()
            }else {
                    SelectCharactersP2C3()
            }
        case "2": // Vendre les produits
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                   if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        case "3": // Traire les vaches
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                   if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        case "4": // Moissonner
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        case "5": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        case "6": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        case "7": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                 if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        case "8": // Tondre les moutons
            selectcharactersP1Int.insert(int, at : 2)
                   selectcharactersP1.insert(choice, at : 2)
                if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice {
                     print("This Characters is already use")
                    SelectCharactersP1C3()
                 }else {
                         SelectCharactersP2C3()
                 }
        default:
            print("TRY AGAIN ERROR INPUT")
           SelectCharactersP1C3()
        }
    }
}
    }

func SelectCharactersP2C3() {
    print("\n \(player1) Choice 1: \(selectcharactersP1Int[0]) \(characters[selectcharactersP1Int[0]])"
    +     "\n Choice 2: \(selectcharactersP1Int[1]) \(characters[selectcharactersP1Int[1]])"
     +     "\n Choice 3: \(selectcharactersP1Int[2]) \(characters[selectcharactersP1Int[2]])")
    print("\n \(player2) Choice 1: \(selectcharactersP2Int[0]) \(characters[selectcharactersP2Int[0]])"
          +     "\n Choice 2: \(selectcharactersP2Int[1]) \(characters[selectcharactersP2Int[1]])")
        selectCharactersPrintP2()
        print("last characters selection")
    // On récupère la réponse de l'utilisateur
      if let choice = readLine() {
           if let int = Int(choice) {
        switch choice {
        case "1": // Nourrir les animaux
            selectcharactersP2Int.insert(int, at : 2)
            selectcharactersP2.insert(choice, at : 2)
            if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                print("This Characters is already use")
                SelectCharactersP2C3()
            }else {
                  beforeGameStartCharacterselected()
            }
        case "2": // Vendre les produits
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                       if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                        SelectCharactersP2C3()
                 }else {
                       beforeGameStartCharacterselected()
                 }
        case "3": // Traire les vaches
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                        if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                            SelectCharactersP2C3()
                 }else {
                        beforeGameStartCharacterselected()
                 }
        case "4": // Moissonner
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                      if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                        SelectCharactersP2C3()
                 }else {
                        beforeGameStartCharacterselected()
                 }
        case "5": // Tondre les moutons
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                     if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                        SelectCharactersP2C3()
                 }else {
                         beforeGameStartCharacterselected()
                 }
        case "6": // Tondre les moutons
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                     if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                        SelectCharactersP2C3()
                 }else {
                         beforeGameStartCharacterselected()
                 }
        case "7": // Tondre les moutons
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                      if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                        SelectCharactersP2C3()
                 }else {
                         beforeGameStartCharacterselected()
                 }
        case "8": // Tondre les moutons
            selectcharactersP2Int.insert(int, at : 2)
                   selectcharactersP2.insert(choice, at : 2)
                    if selectcharactersP1[0] == choice || selectcharactersP2[0] == choice || selectcharactersP1[1] == choice || selectcharactersP2[1] == choice || selectcharactersP1[2] == choice {
                     print("This Characters is already use")
                        SelectCharactersP2C3()
                 }else {
                         beforeGameStartCharacterselected()
                 }
        default:
            print("TRY AGAIN ERROR INPUT")
           SelectCharactersP2C3()
        }
    }
    }
}

//MARK: - Test

func beforeGameStartCharacterselected() {
    print("ALL THE CHARACTERS ALL SELECTED")
    print("\n \(player1) Choice 1: \(selectcharactersP1Int[0]) \(characters[selectcharactersP1Int[0]])"
    +     "\n Choice 2: \(selectcharactersP1Int[1]) \(characters[selectcharactersP1Int[1]])"
     +     "\n Choice 3: \(selectcharactersP1Int[2]) \(characters[selectcharactersP1Int[2]])")
    print("\n \(player2) Choice 1: \(selectcharactersP2Int[0]) \(characters[selectcharactersP2Int[0]])"
          +     "\n Choice 2: \(selectcharactersP2Int[1]) \(characters[selectcharactersP2Int[1]])"
         +     "\n Choice 3: \(selectcharactersP2Int[2]) \(characters[selectcharactersP2Int[2]])")
    print("\n"
           + "Select characters are OK?"
           + "\n1. Yes"
           + "\n2. No, change characters."
           + "\n3. Return to Menu"
           + "\n")
       // On récupère la réponse de l'utilisateur
       if let choice = readLine() {
           switch choice {
           case "1": // Ajouter une nouvelle activité
               energysetupbeforeGame()
           case "2": // Consulter la banque
             selectCharactersP1C1()
           case "3": // Consulter la banque
                presentMenu()
               
           default:
               print("Try Again invalid input")
               beforeGameStartCharacterselected()
           }
       }
    
    
}

func energysetupbeforeGame() { // error if
    
    print("\n"
        + "How many energy the characters wil have during the game?"
        + "\n")
    
         if let choice = readLine() {
         if let int = Int(choice) {
        energy = int
        if energy >= 20 && energy <= 100 {
            print("energy of each will be : \(energy) the game will begin soon")
            energyP1 = [energy, energy, energy]
            energyP2 = [energy, energy, energy]
            startGame()
        } else if energy <= 20 && energy >= 101   {
            print("Error enter number only between 100 and 1000")
            return energysetupbeforeGame()
        } else {
            print("Error enter number only between 100 and 1000")
            return energysetupbeforeGame()
            }
}
    }
}

func startGame() { // aletoire + select good player to start
    print("\n"
        + "THE GAME BEGIN")
                //random start player.
        randomStartPlayer()
    if randomP == 1 {
         print("\(player1) start the game")
        turnP1()
    } else {
         print("\(player2) start the game")
        turnP2()
    }
}

func turnP1() {
    howlonggame += 1
    print("\n Now it's \(player1) to play"
           + "\n1. Attack"
           + "\n2. Recovery"
           + "\n")
       // On récupère la réponse de l'utilisateur
       if let choice = readLine() {
           switch choice {
           case "1": // Ajouter une nouvelle activité
               turnP1attack()
           case "2": // Consulter la banque
               turnP1recovery()
               
           default:
               print("Try Again invalid input")
               turnP1()
           }
       }
}
func ifplayerisdead1() {
    if energyP1[0] == 0 {
        print ("You're characters is dead ")
        turnP1attack()
    }
}
func ifplayerisdead2() {
    if energyP2[0] == 0 {
        print ("You're characters is dead ")
        turnP2attack()
    }
}

func ifplayerisdead11() {
  if energyP1[1] == 0 {
    print ("You're characters is dead ")
        turnP1attack()
    }
}
func ifplayerisdead12() {
    if energyP1[2] == 0 {
        print ("You're characters is dead ")
        turnP1attack()
    }
}
func ifplayerisdead21() {
    if energyP2[1] == 0 {
       print ("You're characters is dead ")
           turnP2attack()
    }
}
func ifplayerisdead22() {
    if energyP2[2] == 0 {
        print ("You're characters is dead ")
        turnP2attack()
    }
    
}

func turnP1attack() {
        statsduringgame()
    print("\n \(player1)"
           + "\nWhich characters of you're army do you want to Attack with?"
           + "\n1.\(characters[selectcharactersP1Int[0]]) "
           + "\n2.\(characters[selectcharactersP1Int[1]])"
           + "\n3.\(characters[selectcharactersP1Int[2]])")
       // On récupère la réponse de l'utilisateur
       if let choice = readLine() {
           switch choice {
           case "1": // Ajouter une nouvelle activité
            ifplayerisdead1()
                textP1()
                // On récupère la réponse de l'utilisateur
                if let choice = readLine() {
                    switch choice {
                              case "1": // Ajouter une nouvelle activité
                                ifdeadP1()
                               endGame()
                        print ("\(characters[selectcharactersP2Int[0]]) = \(energyP2[0])")
                        turnP2()
                              case "2": // Consulter la banque
                                ifdeadP11()
                              endGame()
                         print ("\(characters[selectcharactersP2Int[1]]) = \(energyP2[1])")
                        turnP2()
                            case "3": // Consulter la banque
                                ifdeadP12()
                                endGame()
                         print ("\(characters[selectcharactersP2Int[2]]) = \(energyP2[2])")
                                  turnP2()
                              default:
                                  print("Try Again invalid input")
                                  turnP1attack()
                              }
            }
            
           case "2": // Consulter la banque
            ifplayerisdead11()
            textP1()
                           if let choice = readLine() {
                       switch choice {
                                 case "1": // Ajouter une nouvelle activité
                                    ifdeadP1()
                                  endGame()
                           print ("\(characters[selectcharactersP2Int[0]]) = \(energyP2[0])")
                           turnP2()
                                 case "2": // Consulter la banque
                                    ifdeadP11()
                                 endGame()
                            print ("\(characters[selectcharactersP2Int[1]]) = \(energyP2[1])")
                           turnP2()
                               case "3": // Consulter la banque
                                ifdeadP12()
                                   endGame()
                            print ("\(characters[selectcharactersP2Int[2]]) = \(energyP2[2])")
                                     turnP2()
                                 default:
                                     print("Try Again invalid input")
                                     turnP1attack()
                                 }
               }
            case "3": // Consulter la banque
                ifplayerisdead12()
                textP1()
                            if let choice = readLine() {
                        switch choice {
                                  case "1": // Ajouter une nouvelle activité
                                    ifdeadP1()
                                   endGame()
                            print ("\(characters[selectcharactersP2Int[0]]) = \(energyP2[0])")
                            turnP2()
                                  case "2": // Consulter la banque
                                    ifdeadP11()
                                  endGame()
                             print ("\(characters[selectcharactersP2Int[1]]) = \(energyP2[1])")
                            turnP2()
                                case "3": // Consulter la banque
                                    ifdeadP12()
                                    endGame()
                             print ("\(characters[selectcharactersP2Int[2]]) = \(energyP2[2])")
                                      turnP2()
                                  default:
                                      print("Try Again invalid input")
                                      turnP1attack()
                                  }
                }
           default:
               print("Try Again invalid input")
               turnP1attack()
           }
    }
       }
func turnP1recovery() {
    print("Which Characters do you want to recover energy?")
    print ("1. \(characters[selectcharactersP1Int[0]]) = \(energyP1[0])")
    print ("2. \(characters[selectcharactersP1Int[1]]) = \(energyP1[1])")
    print ("3. \(characters[selectcharactersP1Int[2]]) = \(energyP1[2])")
    print ("4. Return to Attack")
    if let choice = readLine() {
    switch choice {
    case "1": // Ajouter une nouvelle activité
        if (energyP1[0]) == 20 {
          print("Player is already full")
            
            turnP1recovery()
        }else {
            (energyP1[0]) += 5
            if (energyP1[0]) >= 20 {
                (energyP1[0]) = 20
                turnP2()
            }
            turnP2()
        }
    case "2": // Consulter la banque
        if (energyP1[1]) == 20 {
          print("Player is already full")
            
            turnP1recovery()
        }else {
            (energyP1[1]) += 5
            if (energyP1[1]) >= 20 {
                (energyP1[1]) = 20
                turnP2()
            }
            turnP2()
        }
        case "3": // Ajouter une nouvelle activité
            if (energyP1[2]) == 20 {
              print("Player is already full")
                
                turnP1recovery()
            }else {
                (energyP1[2]) += 5
                if (energyP1[2]) >= 20 {
                    (energyP1[2]) = 20
                    turnP2()
                }
                turnP2()
            }
    case "4":
        turnP1()
    default: turnP1recovery()
}
}
}

func turnP2recovery() {
     print("Which Characters do you want to recover energy?")
        print ("1. \(characters[selectcharactersP2Int[0]]) = \(energyP2[0])")
        print ("2. \(characters[selectcharactersP2Int[1]]) = \(energyP2[1])")
        print ("3. \(characters[selectcharactersP2Int[2]]) = \(energyP2[2])")
        print ("4. Return to Attack")
    
        if let choice = readLine() {
        switch choice {
        case "1": // Ajouter une nouvelle activité
            if (energyP2[0]) == 20 {
              print("Player is already full")
                
                turnP2recovery()
            }else {
                (energyP2[0]) += 5
                if (energyP2[0]) >= 20 {
                    (energyP2[0]) = 20
                    turnP1()
                }
                turnP1()
            }
        case "2": // Consulter la banque
            if (energyP2[1]) == 20 {
              print("Player is already full")
                
                turnP2recovery()
            }else {
                (energyP2[1]) += 5
                if (energyP2[1]) >= 20 {
                    (energyP2[1]) = 20
                    turnP1()
                }
                turnP1()
            }
            case "3": // Ajouter une nouvelle activité
                if (energyP2[2]) == 20 {
                  print("Player is already full")
                    
                    turnP2recovery()
                }else {
                    (energyP2[2]) += 5
                    if (energyP2[2]) >= 20 {
                        (energyP2[2]) = 20
                        turnP1()
                    }
                    turnP1()
                }
        case "4" :
            turnP2()
        default: turnP2recovery()
    }
    }
}
func turnP2() {
    howlonggame += 1
    print("\n Now it's \(player2) to play"
           + "\n1. Attack"
           + "\n2. Recovery"
           + "\n")
       // On récupère la réponse de l'utilisateur
       if let choice = readLine() {
           switch choice {
           case "1": // Ajouter une nouvelle activité
               turnP2attack()
           case "2": // Consulter la banque
               turnP2recovery()
               
           default:
               print("Try Again invalid input")
               turnP2()
           }
       }
}
func textP1() {
    print("\n"
        + "\nWhich characters of you're enemy do you want to attack?"
        + "\n1.\(characters[selectcharactersP2Int[0]])"
        + "\n2.\(characters[selectcharactersP2Int[1]])"
        + "\n3.\(characters[selectcharactersP2Int[2]])")
}
func textP2() {
    print("\n"
        + "\nWhich characters of you're enemy do you want to attack?"
        + "\n1.\(characters[selectcharactersP1Int[0]])"
        + "\n2.\(characters[selectcharactersP1Int[1]])"
        + "\n3.\(characters[selectcharactersP1Int[2]])")
}

func turnP2attack() {
    statsduringgame()
print("\n \(player2)"
       + "\nWhich characters of you're army do you want to Attack with?"
       + "\n1.\(characters[selectcharactersP2Int[0]]) "
       + "\n2.\(characters[selectcharactersP2Int[1]])"
       + "\n3.\(characters[selectcharactersP2Int[2]])")
   // On récupère la réponse de l'utilisateur
   if let choice = readLine() {
       switch choice {
       case "1": // Ajouter une nouvelle activité
        ifplayerisdead2()
            textP2()
            // On récupère la réponse de l'utilisateur
            if let choice = readLine() {
                switch choice {
                          case "1": // Ajouter une nouvelle activité
                            ifdeadP2()
                           endGame()
                    print ("\(characters[selectcharactersP1Int[0]]) = \(energyP1[0])")
                    turnP1()
                          case "2": // Consulter la banque
                            ifdeadP21()
                          endGame()
                     print ("\(characters[selectcharactersP1Int[1]]) = \(energyP1[1])")
                    turnP1()
                        case "3": // Consulter la banque
                            ifdeadP22()
                           endGame()
                     print ("\(characters[selectcharactersP1Int[2]]) = \(energyP1[2])")
                              turnP1()
                          default:
                              print("Try Again invalid input")
                              turnP1attack()
                          }
        }
        
       case "2": // Consulter la banque
        ifplayerisdead21()
        textP2()
                    if let choice = readLine() {
                   switch choice {
                             case "1": // Ajouter une nouvelle activité
                                ifdeadP2()
                              endGame()
                       print ("\(characters[selectcharactersP1Int[0]]) = \(energyP1[0])")
                       turnP1()
                             case "2": // Consulter la banque
                                ifdeadP21()
                             endGame()
                        print ("\(characters[selectcharactersP1Int[1]]) = \(energyP1[1])")
                       turnP1()
                           case "3": // Consulter la banque
                            ifdeadP22()
                              endGame()
                        print ("\(characters[selectcharactersP1Int[2]]) = \(energyP1[2])")
                               ifdeadP2()
                                 turnP1()
                             default:
                                 print("Try Again invalid input")
                                 turnP1attack()
                             }
           }
        case "3": // Consulter la banque
            ifplayerisdead22()
            textP2()
                       if let choice = readLine() {
                    switch choice {
                              case "1": // Ajouter une nouvelle activité
                                ifdeadP2()
                               endGame()
                        print ("\(characters[selectcharactersP1Int[0]]) = \(energyP1[0])")
                        turnP1()
                              case "2": // Consulter la banque
                                ifdeadP21()
                              endGame()
                         print ("\(characters[selectcharactersP1Int[1]]) = \(energyP1[1])")
                        turnP1()
                            case "3": // Consulter la banque
                                ifdeadP22()
                               endGame()
                         print ("\(characters[selectcharactersP1Int[2]]) = \(energyP1[2])")
                                  turnP1()
                              default:
                                  print("Try Again invalid input")
                                  turnP1attack()
                              }
            }
       default:
           print("Try Again invalid input")
           turnP2attack()
       }
}
   }
func ifdeadP1() {
    if energyP2[0] == 0 {
        print("\(characters[selectcharactersP2Int[0]]) is DEAD Select another")
        turnP1attack()
    }else {
        energyP2[0] -= 5
    }
}
func ifdeadP11() {
    if energyP2[1] == 0 {
        print("\(characters[selectcharactersP2Int[1]]) is DEAD Select another")
        turnP1attack()
    }else {
        energyP2[1] -= 5
    }
}
func ifdeadP12() {
    if energyP2[2] == 0 {
        print("\(characters[selectcharactersP2Int[2]]) is DEAD Select another")
        turnP1attack()
    }else {
        energyP2[2] -= 5
    }
}
func ifdeadP2() {
    if energyP1[0] == 0 {
        print("\(characters[selectcharactersP1Int[0]]) is DEAD Select another")
        turnP2attack()
    }else {
        energyP1[0] -= 5
    }
}
func ifdeadP21() {
    if energyP1[1] == 0 {
        print("\(characters[selectcharactersP1Int[1]]) is DEAD Select another")
        turnP2attack()
    }else {
        energyP1[1] -= 5
    }
}
func ifdeadP22() {
    if energyP1[2] == 0 {
        print("\(characters[selectcharactersP1Int[2]]) is DEAD Select another")
        turnP2attack()
    }else {
        energyP1[2] -= 5
    }
}

func endGame() {
    if energyP1[0] == 0 && energyP1[1] == 0 && energyP1[2] == 0{
        print("END GAME \(player2) win ")
        winP2 += 1
        numberofgameplayed += 1
        if let choice = readLine() {
               switch choice {
               default:
                   print("End Game")
                   statsGame()
                restartnewgame()
               }
           }
    } else if energyP2[0] == 0 && energyP2[1] == 0 && energyP2[2] == 0 {
        print("END GAME \(player1) win ")
        winP1 += 1
        numberofgameplayed += 1
        if let choice = readLine() {
               switch choice {
               default:
                   print("End Game")
                   statsGame()
                restartnewgame()
               }
           }
    }
}
func statsduringgame() {
    print("Numbers of Turn : \(howlonggame) "
      + "\n \(player1)"
      + "\n \(characters[selectcharactersP1Int[0]]) = \(energyP1[0]) Hit : __ "
      + "\n \(characters[selectcharactersP1Int[1]]) = \(energyP1[1]) Hit : __ "
      + "\n \(characters[selectcharactersP1Int[2]]) = \(energyP1[2]) Hit : __ "
      + "\n \(player2)"
      + "\n \(characters[selectcharactersP2Int[0]]) = \(energyP2[0]) Hit : __ "
      + "\n \(characters[selectcharactersP2Int[1]]) = \(energyP2[1]) Hit : __ "
      + "\n \(characters[selectcharactersP2Int[2]]) = \(energyP2[2]) Hit : __ "
      + "\n")
}
func statsGame() {
     print("Numbers of Turn : \(howlonggame) "
    + "\n \(player1) Total Hit :___  WIN : \(winP1) "
    + "\n \(characters[selectcharactersP1Int[0]]) = \(energyP1[0]) Hit : __ "
    + "\n \(characters[selectcharactersP1Int[1]]) = \(energyP1[1]) Hit : __ "
    + "\n \(characters[selectcharactersP1Int[2]]) = \(energyP1[2]) Hit : __ "
    + "\n \(player2) Total Hit : ___ WIN : \(winP2) "
    + "\n \(characters[selectcharactersP2Int[0]]) = \(energyP2[0]) Hit : __ "
    + "\n \(characters[selectcharactersP2Int[1]]) = \(energyP2[1]) Hit : __ "
    + "\n \(characters[selectcharactersP2Int[2]]) = \(energyP2[2]) Hit : __ "
    + "\n"
    + "\n \(numberofgameplayed)")
    
    //replay another game
}


func restartnewgame() {
    presentMenu()
}

            // function 1/5 Attack Mi

presentMenu()

// number of recover
// number of attack miss
// number of case


//1.0 Recover.. 4 pts
//2.0 number var  of hit
//3.0 Supercase for better weapons.. 1chanceof 3  if la -5 by default.. et si il force 6-7-8 pts hassard
//6.0 Weapons.. setup?? inspiration
