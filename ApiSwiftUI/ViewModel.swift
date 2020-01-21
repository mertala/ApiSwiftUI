//
//  ViewModel.swift
//  ApiSwiftUI
//
//  Created by Mert Ala on 21.01.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var apod: [APOD] = []
    init() {
        self.fetch()
    }
    
}
extension ViewModel {
    func fetch() {
        API.getImageOfTheDay { apod in
            self.apod = apod
            
        }
    }
}
