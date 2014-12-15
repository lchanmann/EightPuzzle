//
//  AStar.swift
//  EightPuzzle
//
//  Created by mann on 12/15/14.
//  Copyright (c) 2014 mann. All rights reserved.
//

public class AStar {
    private var h:ManhattanDistance
    
    init(h: ManhattanDistance) {
        self.h = h
    }
    
    convenience init() {
        self.init(h: ManhattanDistance())
    }
    
    public func search(puzzle: Puzzle) {
        println(puzzle.get_layout())
    }
}
