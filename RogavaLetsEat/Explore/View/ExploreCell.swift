//
//  ExploreCell.swift
//  RogavaLetsEat
//
//  Created by IMAC on 12.12.21.
//

import UIKit

class ExploreCell: UICollectionViewCell {
    
    @IBOutlet weak var IbIName: UILabel!
    
    
    @IBOutlet weak var imgExplore: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgExplore.layer.cornerRadius = 9
        imgExplore.layer.masksToBounds = true
    }
    
}
