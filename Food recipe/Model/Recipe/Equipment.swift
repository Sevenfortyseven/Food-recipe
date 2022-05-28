//
//  Equipment.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

struct Equipment: Codable
{
    var id: Int
    var name: String
    var localizedName: String
    var image: String
    var length: Length?
}

