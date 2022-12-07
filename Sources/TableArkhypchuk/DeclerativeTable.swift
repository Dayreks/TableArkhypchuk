//
//  DeclerativeTable.swift
//  DeclarativeTableViewArkhypchuk
//
//  Created by Bohdan on 13.11.2022.
//

import UIKit


/**
 Declarative table created by Arkhypchuk Bohdan
 */
public final class Table: UITableView {
    
    private var strongDataSource: DataSource
    
    /**
     Initializer of the *Table•
        - Parameters:
            - build(): Result Builder using *Section*
     
        - Returns: *Table* view object
     
     */
    public init(@DataSourceBuilder _ build: () -> DataSource) {
        strongDataSource = build()
        super.init(frame: .zero, style: .grouped)
        dataSource = strongDataSource
    }
    
    /**
        Initializer of the *Table•
        - Parameters:
            - build(): Result Builder using *Row*
        - Returns: *Table* view object
     */
    public init(@SectionBuilder _ build: () -> [Row]) {
        strongDataSource = DataSource([Section{build()}])
        super.init(frame: .zero, style: .grouped)
        dataSource = strongDataSource
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /**
        Reload function for updating table values
        - Parameters:
            - build(): Result Builder using *Section*
        - Returns: *Table* view object
     */
    public func reload(@DataSourceBuilder _ build: () -> DataSource) {
        strongDataSource = build()
        dataSource = strongDataSource
        reloadData()
    }
    
    
    /**
        Reload function for updating table values
        - Parameters:
            - build(): Result Builder using *Row*
        - Returns: *Table* view object
     */
    public func reload(@SectionBuilder _ build: () -> [Row]) {
        strongDataSource = DataSource([Section{build()}])
        dataSource = strongDataSource
        reloadData()
    }
    
    
    /**
        Function to set the footer of the *Table*
        - Parameters:
            - view: The UIView that you want to set in the footer of the table
        - Returns: *Table* view object
     */
    @discardableResult public func tableFooter(_ view: UIView?) -> Self {
        tableFooterView = view
        return self
    }
    
    /**
     Function to set the header of the *Table*
        - Parameters:
            - view: The UIView that you want to set in the header of the table
        - Returns: *Table* view object
     */
    @discardableResult public func tableHeader(_ view: UIView?) -> Self {
        tableHeaderView = view
        return self
    }
    
    /**
     Function to set the background of the *Table*
        - Parameters:
            - view: The UIView that you want to set in the background of the table
        - Returns: *Table* view object
     */
    @discardableResult public func background(_ view: UIView?) -> Self {
        backgroundView = view
        return self
    }
    
}



