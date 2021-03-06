//
//  NumberOutputLabel.swift
//  CalculatorApp
//
//  Created by Lukas Carvajal on 26.04.19.
//  Copyright © 2019 AppsByLukas. All rights reserved.
//

import UIKit

class NumberOutputLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    fileprivate func commonInit() {
        accessibilityIdentifier = "OutputLabel"
        backgroundColor = .black
        numberOfLines = 1
        
        textAlignment = .right
        textColor = .white
        text = "0"
        
        font = UIFont.monospacedDigitSystemFont(ofSize: 86, weight: .light)
        adjustsFontSizeToFitWidth = true
    }
}
