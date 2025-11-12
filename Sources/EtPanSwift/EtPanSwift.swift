//
//  EtPanSwift.swift
//  EtPanDemo
//
//  Created by Diggory Laycock on 12/11/2025.
//

import clibetpan

//  We could put Swift Wrappers to etpan c behaviour here....

/// Print EtPan library version
public func printEtPanVersion() {
    print("libetpan version: \(libetpan_get_version_major()).\(libetpan_get_version_minor()) ")
}
