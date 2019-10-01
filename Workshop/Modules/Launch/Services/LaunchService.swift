//
//  LaunchService.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper


class LaunchService {
    
    static func getLaunchs(success: (([LaunchModel]) -> Void)?, failure: ((Error) -> Void)? ) {
        let url = "https://api.spacexdata.com/v3/launches"
        Alamofire.request(url, method: .get).responseArray { (response: DataResponse<[LaunchDTO]>) in
            switch response.result {
            case .success(let lauchModelResponses):
                let models = lauchModelResponses.map({ LaunchDTOConversor.from(launchDTO: $0) })
                success?(models)
            case .failure(let error):
                failure?(error)
            }
        }
    }
}
