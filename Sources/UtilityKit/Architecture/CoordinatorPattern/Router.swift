//
//  Router.swift
//  CoordinatorPattern
//
//  Created by Darryl Weimers on 2021-02-21.
//

import UIKit

public class Router: NSObject, UINavigationControllerDelegate {
    
    // MARK: init
    private weak var navigationController: UINavigationController?
    private var viewControllersAtStart: [UIViewController]
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.viewControllersAtStart = self.navigationController?.viewControllers ?? [UIViewController]()
        super.init()
        
        self.navigationController?.delegate = self
    }
    
    public func returnNavigationControllerToAtStartState(animated: Bool) {
        self.navigationController?.setViewControllers(viewControllersAtStart, animated: animated)
    }
}
