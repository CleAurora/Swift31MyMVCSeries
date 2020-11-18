//
//  Brand.swift
//  trainingAPIAndXib
//
//  Created by Cleís Aurora Pereira on 18/11/20.
//

import Foundation
import Alamofire

class Brand{

    var brandArray = [BrandModel]()
    func getBrand(completionHandler: @escaping (_ result: Bool, _ error: Error? ) -> Void){
        do {
            let request = "https://parallelum.com.br/fipe/api/v1/carros/marcas"
            AF.request(request).responseJSON { response in
                if let dictionary = response.value as? [[String: Any]] {
                    for item in dictionary {
                        let brand = BrandModel(fromDictionary: item)
                        self.brandArray.append(brand)
                    }
                    completionHandler(true, nil)
                    print("entrou sim")
                }
            }

            //completionHandler(true, nil)
        } catch {
            completionHandler(false, nil)
        }
    }




}
