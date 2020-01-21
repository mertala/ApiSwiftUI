//
//  ContentView.swift
//  ApiSwiftUI
//
//  Created by Mert Ala on 21.01.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.apod) {apod in
                    ImageView(apod.url).frame(width:375, height: 275)
                    VStack {
                        Text(apod.title).font(.title)
                            
                        Text(apod.date)
                        Text(apod.explanation).font(.body)
                    
                    }
                }
            }.navigationBarTitle(Text("Nasa Data"))
        }
    }
}
