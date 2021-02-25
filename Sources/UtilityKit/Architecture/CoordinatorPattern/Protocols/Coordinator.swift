//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Darryl Weimers on 2021-02-21.
//

import Foundation

public protocol Coordinator: class {
    func start() // start a coordinator or a view controller
    var onflowCompleted: (() -> Void)? { get set } // a child coordinator tell its parent to handle the completion 
}
