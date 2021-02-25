//
//  StateMachine.swift
//  CoordinatorPattern
//
//  Created by Darryl Weimers on 2021-02-21.
//

import Foundation

public protocol StateMachine {
    associatedtype Scene
    mutating func next()
    mutating func back()
}
