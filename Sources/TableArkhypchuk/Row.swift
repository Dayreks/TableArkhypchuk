//
//  Row.swift
//  TableArkhypchuk
//
//  Created by Bohdan on 06.12.2022.
//

import Foundation


public struct Row {
    
    private(set) var cellIdentifier: String
    public var title: String
    public var moveable: Bool? = true
    public var editable: Bool? = false
    
    /**
        Initializer of the *Row*
        - Parameters:
            - identifier: *Row* identifier in the form of String
            - title: *Row* title that will be displayed in it
        - Returns: *Table* view object
     */
    public init(identifier: String, title: String) {
        self.cellIdentifier = identifier
        self.title = title
        self.editable = false
    }
    
    /**
        Function to select *Row*
        - Returns: *Row*
     */
    @discardableResult public func didSelect(_ closure: () -> ()) -> Row{
        Row(identifier: cellIdentifier, title: title)
    }
    
}
