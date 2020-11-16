//
//  MyController.swift
//  MyMVCSeries
//
//  Created by Cleís Aurora Pereira on 16/11/20.
//

import Foundation
import UIKit
import Alamofire

class MyController{

    func loadShow(completionHandler: (_ result: Bool, _ error: Error?) -> Void){
        do{

            let request = "https://api.tvmaze.com/shows?page=1"
            print("eita entrou?")
            AF.request(request).responseJSON { response in
                if let show = response.value as? [[String: Any]]{
                    for i in show {
                        let object = Shows(fromDictionary: i)
                        print(object.name)
                    }
                }

        }
            completionHandler(true, nil)
        }catch{
            completionHandler(false, nil)
        }
    }
    
}

