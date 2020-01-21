//
//  ImageView.swift
//  ApiSwiftUI
//
//  Created by Mert Ala on 21.01.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import SwiftUI

struct ImageView: View {
   @ObservedObject var imageLoader = ImageLoader()
    init(_ url: String) {
        self.imageLoader.load(url)
    }
    var body: some View {
       
        if let image = imageLoader.downloadedImage {
            return Image(uiImage: image).resizable()
        }else {
            return Image(systemName: "photo").resizable()
        }
    }
}
