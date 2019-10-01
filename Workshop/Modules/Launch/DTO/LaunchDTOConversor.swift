//
//  LaunchDTOConversor.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

import Foundation

class LaunchDTOConversor {
    static func from(launchDTO: LaunchDTO) -> LaunchModel {
        var model = LaunchModel()
        model.flightNumber = launchDTO.flightNumber
        model.launchSuccess = launchDTO.launchSuccess
        model.details = launchDTO.details
        model.missionName = launchDTO.missionName
        model.missionPathUrl = launchDTO.missionPathUrl
        return model
    }
}
