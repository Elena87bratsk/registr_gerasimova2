//
//  MovieObject.swift
//  registr_gerasimova
//
//  Created by user on 06.06.2021.
//

import Foundation
import SwiftyJSON
import Alamofire


class Movieobject: ObservableObject{
    
    @Published var posters = [String]()
    
    func getMovies()  {
        let url = "http://cinema.areas.su/movies"
        let parametrs :[String:String]=["filter" : "new"]
        
        AF.request (url, method: .get, parameters: parametrs, encoder: URLEncodedFormParameterEncoder.default).validate () .responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(json)
                for index in 0..<json.count {
                    self.posters.append(json[index]["poster"].stringValue)
                }
              
            case .failure(let error):
                print(error)
                
            }
    }
}
}
