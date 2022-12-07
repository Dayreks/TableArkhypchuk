//
//  Section.swift
//  TableArkhypchuk
//
//  Created by Bohdan on 06.12.2022.
//

import Foundation


public struct Section {
    
    public var rows: [Row]
    public var title: String
    
    
    /**
        Initializer of the *Section*
        - Parameters:
            - title: *Section* title that will be displayed in it
            - build(): Result Builder using *Row*
        - Returns: *Table* view object
     */
    public init(title: String = "", @SectionBuilder _ build: () -> [Row]) {
        rows = build()
        self.title = title
    }
    
}
