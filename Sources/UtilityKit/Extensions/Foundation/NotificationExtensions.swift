//
//  NotificationExtensions.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-10-11.
//

import Foundation


public extension Notification.Name {
    
    public static var willEnterForeground: Notification.Name {
          return .init(rawValue: "sceneWillEnterForground")
    }
    
    public static var didEnterBackground: Notification.Name {
          return .init(rawValue: "sceneDidEnterBackground")
    }
}
