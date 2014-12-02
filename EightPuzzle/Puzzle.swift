//
//  Puzzle.swift
//  EightPuzzle
//
//  Created by mann on 12/2/14.
//  Copyright (c) 2014 mann. All rights reserved.
//

public class Puzzle {
    private var layout: [Int]
    private var blankIndex: Int = 0
    
    init(layout: [Int]) {
        self.layout = layout
        for var i=0; i<layout.count; i++ {
            if layout[i] == 0 {
                blankIndex = i
                break
            }
        }
    }
    
    public func get_layout() -> [Int] {
        return layout
    }
    
    public func get_actions() -> [Action] {
        var actions = [Action.Left, Action.Right, Action.Up, Action.Down]
        var rowIndex = blankIndex / 3
        var colIndex = blankIndex % 3
        
        if rowIndex == 0 { actions.removeAtIndex(3) }
        if rowIndex == 2 { actions.removeAtIndex(2) }
        if colIndex == 0 { actions.removeAtIndex(0) }
        if colIndex == 2 { actions.removeAtIndex(1) }
        return actions
    }
    
    public func move(action: Action) {
        var swapIndex: Int
        
        switch action {
        case .Left: swapIndex = blankIndex - 1
        case .Right: swapIndex = blankIndex + 1
        case .Up: swapIndex = blankIndex + 3
        case .Down: swapIndex = blankIndex - 3
        }
        
        swap(blankIndex, j: swapIndex)
        blankIndex = swapIndex
    }
    
    private func swap(i: Int, j: Int) {
        var x = i, y = j
        // make x be the smaller index
        if i > j {
            x = j
            y = i
        }
        var yValue = layout.removeAtIndex(y)
        layout.insert(layout[x], atIndex: y)
        layout.removeAtIndex(x)
        layout.insert(yValue, atIndex: x)
    }
}