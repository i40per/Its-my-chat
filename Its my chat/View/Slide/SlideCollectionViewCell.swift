//
//  SlideCollectionViewCell.swift
//  Its my chat
//
//  Created by MacBook on 10.02.2022.
//

import UIKit

class SlideCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var regBtn: UIButton!
    @IBOutlet weak var authBtn: UIButton!
    
    
    static let reuseId = "SlideCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func config(slide:Slides) {
        slideImg.image = slide.img
        descriptionText.text = slide.text
        
        if slide.id == 3 {
            regBtn.isHidden = false
            authBtn.isHidden = false
        }
    }
    
    @IBAction func redBtnClick(_ sender: Any) {
        
    }
    
    @IBAction func authBtnClick(_ sender: Any) {
        
    }
    
}
