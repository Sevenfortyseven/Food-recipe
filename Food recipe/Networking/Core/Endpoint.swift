//
//  Endpoint.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

protocol Endpoint
{
    
    var scheme: String { get }
    
    var baseURL: String { get }
    
    var path: String { get }
    
    var params: [URLQueryItem] { get }
    
    var method: RequestMethod { get }
    
    var body: [String: String]? { get }

    var header: [String: String]? { get }
    
}



