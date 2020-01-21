//
//  Constant.swift
//  ApiSwiftUI
//
//  Created by Mert Ala on 21.01.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import Foundation


class Constant {
    static  var apiKey: String {
      return "DQPTOAhuT0BCz0VmKceAhPZchsYpdpiSrhFQZajY"
    }
    static var baseUrlString: String {
        return "https://api.nasa.gov/planetary/apod?"
    }
    
    static var url:URL {
        guard let url = URL(string: "\(baseUrlString)api_key=\(apiKey)&count=25") else {
            fatalError()
        }
        return url
    }
    static var session: URLSession {
        let session = URLSession(configuration: .default)
        return session
    }
    static var request: URLRequest {
        let req = URLRequest(url: url)
        return req
    }
    static var  decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
        
    }
}
