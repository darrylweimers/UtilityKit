//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by Darryl Weimers on 2021-02-17.
//

import Foundation

public class BaseCoordinator: Coordinator {
    
    // MARK: child coordinator management
    private var childCoordinators = [Coordinator]()
    
    public func addDependency(_ coordinator: Coordinator) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    public func removeDependency(_ coordinator: Coordinator?) {
        guard childCoordinators.isEmpty == false, let coordinator = coordinator else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    // MARK: - start flow
    open func start() {
        
    }
    
    // MARK: end flow
    public var onflowCompleted: (() -> Void)?
    open func end() {
        guard let finish = onflowCompleted else {
            return
        }
        finish()
    }
}
