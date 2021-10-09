//
//  Ext-UILabel.swift
//  Flash Chat iOS13
//
//  Created by Ahmed Sayed on 03/10/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    func setTextWithTypeAnimation(typedText: String, characterInterval: Double) {
        text = ""
        DispatchQueue.global(qos: .userInteractive).async {
            for character in typedText {
                DispatchQueue.main.async {
                    self.text = self.text! + String(character)
                }
                Thread.sleep(forTimeInterval: characterInterval)
            }
        }
    }
}
