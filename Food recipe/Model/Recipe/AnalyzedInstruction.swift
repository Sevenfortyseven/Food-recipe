//
//  AnalyzedInstruction.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

struct AnalyzedInstruction: Codable
{
    
    var name: String
    var steps: [Step]
}
