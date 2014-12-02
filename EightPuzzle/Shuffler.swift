//
//  Shuffler.swift
//  EightPuzzle
//
//  Created by mann on 12/2/14.
//  Copyright (c) 2014 mann. All rights reserved.
//

import Foundation

struct Shuffler {
    static func perform(layout: [Int], difficulty: Int) -> [Int] {
        var puzzle = Puzzle(layout: layout)
        var shuffle = difficulty * 10
        
        for var i = shuffle; i > 0; i-- {
            var actions = puzzle.get_actions()
            var random = arc4random_uniform(UInt32(actions.count))
            
            puzzle.move(actions[Int(random)]);
        }
        return puzzle.get_layout()
    }
}