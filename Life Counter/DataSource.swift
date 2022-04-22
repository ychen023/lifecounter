//
//  DataSource.swift
//  Life Counter
//
//  Created by Yilin Chen on 4/21/22.
//

import Foundation

class DataSource {
    private(set) var score1 = 0
    private(set) var score2 = 0
    private(set) var display = ""
    
    init() {
        score1 = 20
        score2 = 20
    }
    
    func increase1() {
        score1 += 1
    }
    
    func increase1Five() {
        score1 += 5
    }
    
    func decrease1() {
        score1 -= 1
        check1()
    }
    
    func decrease1Five() {
        score1 -= 5
        check1()
    }
    
    func check1() {
        if score1 < 0 {
            score1 = 0
        }
    }
    
    func increase2() {
        score2 += 1
    }
    
    func increase2Five() {
        score2 += 5
    }
    
    func decrease2() {
        score2 -= 1
        check2()
    }
    
    func decrease2Five() {
        score2 -= 5
        check2()
    }
    
    func check2() {
        if score2 < 0 {
            score2 = 0
        }
    }
    
    func messageDisplay () {
        if score1 == 0 {
            display = "Player1 LOSES!"
        }
        if score2 == 0 {
            display = "Player2 LOSES!"
        }
    }
    
    
}
