//
//  ViewModel.swift
//  SofiyaSobko
//
//  Created by Sofi on 12.01.2021.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire

class ViewModel: ObservableObject {
    @State var perehod:Int = 0
    @Published var gym: [Model] = []
    func SignIn(user:String) {
        
        let url = "http://gym.areas.su/signin?username=\(user)&password=222"
        
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                if json["notice"]["token"].stringValue != "" {
                    
                }
            case .failure(let error):
                print(error)
            }
        }
        func SignOut(user:String) {
            
            let url = "http://gym.areas.su/signout?username=\(user)&password=3"
            
            AF.request(url, method: .post).validate().responseJSON { [self] response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    print("JSON: \(json)")
                    self.gym.append(Model(user: "\(user)"))
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
