//
//  TypeCar.swift
//  trainingAPIAndXib
//
//  Created by Cleís Aurora Pereira on 18/11/20.
//

import Foundation
import Alamofire


class TypeCar {
    var brand: BrandModel?
    var types: [TypeCarModel]

    func loadTypeCar(completionHandler: @escaping (_ result: Bool, _ error: Error?) -> Void) {
    do {

        if let id = brand?.id {
            let request = "https://parallelum.com.br/fipe/api/v1/carros/marcas/\(id)/modelos"

            AF.request(request).responseJSON { response in
                if let dictionary = response.value as? [[String: Any]] {
                    for item in dictionary {
                        let type = TypeCarModel(fromDictionary: item)
                        print(type.name)
                    }
                }
            }
            completionHandler(true, nil)
        }

    } catch {
        completionHandler(false, nil)
    }
    }
}
