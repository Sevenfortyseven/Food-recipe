//
//  RequestError.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

public enum RequestError: Error
{
    case decode
    case invalidURL(URL?)
    case noResponse
    case unauthorised
    case unexpectedStatusCode
    case unknown
    
}


extension RequestError
{
    
    var customMessage: String {
        switch self {
        case .decode:
            return "Decode Error"
        case .invalidURL(let url):
            return "Invalid URL: \(url?.description ?? "-")"
        case .unauthorised:
            return "Session Expired"
        default:
            return "Unknown Error"
        }
    }
    
}
