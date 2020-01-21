//
//  APOD.swift
//  ApiSwiftUI
//
//  Created by Mert Ala on 21.01.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import Foundation

struct APOD: Identifiable, Codable {
    let id = UUID()
    let title: String
    let explanation: String
    let date:  String
    let url: String
    
}
