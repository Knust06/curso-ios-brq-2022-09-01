//
//  Game.swift
//  ProjetoAlvo
//
//  Created by user226741 on 9/9/22.
//

import Foundation


class Game {
    var target : Int = Int.random(in: 1...100)
    var sliderNumberGame : Double = 50.0
    var points : Int = 0
    var pointsDifference : Int = 0
    
    func calcPoints() {
        pointsDifference = abs(target - Int(sliderNumberGame))
        points += pointsDifference
        print("Pontuação \(points)")
        
    }
    
    func newRound() {
        
        target = Int.random(in: 1...100)
        print(target)
        
    }
    func getMessage() -> String {
        if pointsDifference == 0{
            return "Você acertou !" }
            else {
            return "Os pontos do usuário \n são \(points)"
        }
    }
}


    

