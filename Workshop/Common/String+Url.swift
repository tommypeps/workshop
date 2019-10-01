//
//  String+Url.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

import Foundation

extension String {
    
    var url: URL? {
        return URL(string: self)
    }
}
