//
//  ResultBuilders.swift
//  TableArkhypchuk
//
//  Created by Bohdan on 06.12.2022.
//

import Foundation


@resultBuilder
public struct SectionBuilder {
    public static func buildBlock(_ components: RowGroup...) -> [Row] {
        components.flatMap {$0.rows}
    }
    
    public static func buildEither(first component: RowGroup) -> [Row] {
        component.rows
    }
    
    public static func buildEither(second component: RowGroup) -> [Row] {
        component.rows
    }
    
    public static func buildOptional(_ component: [Row]?) -> [Row] {
        component.flatMap {$0.rows} ?? []
    }
    
    
    public static func buildArray(_ components: [[Row]]) -> [Row] {
        components.flatMap {$0.rows}
    }
    
}



@resultBuilder
public struct DataSourceBuilder{
    public static func buildBlock(_ components: SectionGroup...) -> DataSource {
        DataSource(components.flatMap {$0.sections})
    }
    
    public static func buildEither(first component: SectionGroup) -> DataSource {
        DataSource(component.sections)
    }
    
    public static func buildEither(second component: SectionGroup) -> DataSource {
        DataSource(component.sections)
    }
    
    public static func buildOptional(_ component: SectionGroup?) -> DataSource {
        DataSource(component?.sections ?? [])
    }
    
}
