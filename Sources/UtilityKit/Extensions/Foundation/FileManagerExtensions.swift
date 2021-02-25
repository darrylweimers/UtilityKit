//
//  FileManager.swift
//  UtilityKit
//
//  Created by Darryl Weimers on 2020-09-26.
//

import Foundation

public extension FileManager {
    
    public static var getDocumentUrl: URL {
        return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    public static var getApplicationSupportUrl: URL {
        return `default`.urls(for: .applicationSupportDirectory, in: .userDomainMask)[0]
    }
    
    public static func createSubDirectory(for searchDirectory: SearchPathDirectory, subdirectoryName: String) throws {
        // url
        let customUrl = `default`.urls(for: searchDirectory, in: .userDomainMask)[0]
        // create subdirectory
        let subdirectoryUrl: URL = customUrl.appendingPathComponent(subdirectoryName)
        try `default`.createDirectory(at: subdirectoryUrl, withIntermediateDirectories: false, attributes: nil)
    }
}
