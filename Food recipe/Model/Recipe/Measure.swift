//
//  Measure.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

struct Measure: Codable
{
    var us: US
    var metric: Metric
    
    
    struct US: Codable {
        var amount: Float
        var unitShort: String
        var unitLong: String
    }
    
    struct Metric: Codable {
        var amount: Float
        var unitShort: String
        var unitLong: String
    }
}
