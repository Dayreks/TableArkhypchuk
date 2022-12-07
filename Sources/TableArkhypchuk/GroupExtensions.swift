//
//  GroupExtensions.swift
//  TableArkhypchuk
//
//  Created by Bohdan on 06.12.2022.
//

import Foundation

public protocol RowGroup {
    var rows: [Row] { get }
}

extension Row: RowGroup {
    public var rows: [Row] { return [self]}
}

extension Array: RowGroup where Element == Row {
    public var rows: [Row] { self }
}



public protocol SectionGroup {
    var sections: [Section] { get }
}

extension Section: SectionGroup {
    public var sections: [Section] { return [self]}
}

extension Array: SectionGroup where Element == Section {
    public var sections: [Section] { self }
}
