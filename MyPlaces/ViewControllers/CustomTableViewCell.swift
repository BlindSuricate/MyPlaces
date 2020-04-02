//
//  CustomTableViewCell.swift
//  MyPlaces
//
//  Created by user on 2020-03-21.
//  Copyright © 2020 TarasenkoSerhii. All rights reserved.
//

import UIKit
import Cosmos

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageOfPlace: UIImageView! {
        didSet{
            // округление изображения
                  imageOfPlace?.layer.cornerRadius = imageOfPlace.frame.size.height / 2
                  imageOfPlace?.clipsToBounds = true

        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var cosmosView: CosmosView! {
        didSet {
            cosmosView.settings.updateOnTouch = false
        }
    }
    



}
