//
//  LaunchResponse.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

import ObjectMapper

class LaunchDTO: Mappable {
    
    var flightNumber = 0
    var launchSuccess = false
    var details = ""
    var missionName = ""
    var missionPathUrl = ""

    required init?(map: Map) {}
    
    func mapping(map: Map) {
        flightNumber <- map["flight_number"]
        launchSuccess <- map["launch_success"]
        details <- map["details"]
        missionName <- map["mission_name"]
        missionPathUrl <- map["links.mission_patch"]
    }
}
