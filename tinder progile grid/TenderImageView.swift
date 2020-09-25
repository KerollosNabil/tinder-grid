//
//  TenderImageView.swift
//  tinder progile grid
//
//  Created by MAC on 9/24/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class TenderImageView : UIImageView{
    
    let indexLabel:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "k"
        label.layer.shadowOpacity = 1
        label.layer.shadowOffset = .zero
        return label
    }()
    
    @IBInspectable
    var imageIndex:NSNumber!{
        didSet{
            let imageName = "e\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            layer.cornerRadius = 5
            indexLabel.text = imageIndex.stringValue
        }
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addSubview(indexLabel)
        indexLabel.translatesAutoresizingMaskIntoConstraints=false
        indexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        indexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    }
}
