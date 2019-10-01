//
//  LaunchCell.swift
//  Workshop
//
//  Created by JOSE ROLDAN JIMENEZ on 01/10/2019.
//  Copyright © 2019 JOSE ROLDAN JIMENEZ. All rights reserved.
//

import UIKit
import Kingfisher

class LaunchCell: UITableViewCell {
    
    @IBOutlet var pathImage: UIImageView!
    @IBOutlet var missionLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    
    func configureCell(model: LaunchModel) {
        if  !model.missionPathUrl.isEmpty {
            pathImage.kf.setImage(with: model.missionPathUrl.url)
        }
        missionLabel.text = model.missionName
        detailLabel.text = model.details
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        pathImage.kf.cancelDownloadTask()
    }
}
