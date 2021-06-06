//
//  File.swift
//  registr_gerasimova
//
//  Created by user on 05.06.2021.
//

import Foundation
import Alamofire
import SwiftyJSON

class UserObject: ObservableObject {
    func login(mail:String, pas: String){
        let parametrs: [String: String] = ["mail":"Elenabratsk@mail.com",
            "pus": "Gverty"]
        let url = "http://cinema.areas.su/auth/login"
        
        AF.request(url, method: .post, parameters: parametrs, encoder: URLEncodedFormParameterEncoder.default).validate () .responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
            case .failure(let error):
                print(error)    }
}
    }    }
