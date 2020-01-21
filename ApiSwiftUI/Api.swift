//
//  Api.swift
//  ApiSwiftUI
//
//  Created by Mert Ala on 21.01.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import Foundation

class API {
   class func getImageOfTheDay(_ onSuccess: @escaping ([APOD]) ->()    ) {
    Constant.session.dataTask(with: Constant.request) { (data, res, err) in
        guard  let data = data, err == nil else {
            fatalError()
        }
        do {
            let apod = try Constant.decoder.decode([APOD].self, from: data)
            DispatchQueue.main.sync {
               print(apod)
                onSuccess(apod)
            }
        }
        catch {
            fatalError(error.localizedDescription)
            
            }
        }.resume()
    }
}
