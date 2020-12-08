//
//  NotificationExtensions.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-10-11.
//

import Foundation


extension Notification.Name {
    
    static var willEnterForeground: Notification.Name {
          return .init(rawValue: "sceneWillEnterForground")
    }
    
    static var didEnterBackground: Notification.Name {
          return .init(rawValue: "sceneDidEnterBackground")
    }
}
