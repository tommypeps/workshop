//
//  Launch.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

struct Launch {
    static let storyBoardName = "LaunchStorybord"
        
    
    struct Constant {
        static let alertTitle = "**alertTitle**"
        static let alertBody = "**alertBody**"
        static let confirmationButton = "**confirmationButton**"
    }
    
    enum LaunchCell: String, CaseIterable {
        case launchCell = "LaunchCell"
    }
}

