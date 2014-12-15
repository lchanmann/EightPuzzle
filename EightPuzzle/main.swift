//
//  main.swift
//  EightPuzzle
//
//  Created by mann on 12/2/14.
//  Copyright (c) 2014 mann. All rights reserved.
//

// Puzzle goal configuration
var goal = [0, 1, 2, 3, 4, 5, 6, 7, 8]

// The number of puzzles to be solved
var totalPuzzles = 50

// Puzzle collection
var puzzles: [Puzzle] = []

// Search algorithms
var algorithm = AStar()

for var i=0; i<totalPuzzles; i++ {
    var puzzle = Puzzle(layout: Shuffler.perform(goal, difficulty: i + 1))
    
    algorithm.search(puzzle)
//    puzzles.append(puzzle)
//    
//    println(puzzle.get_layout())
}