//
//  DailyButton.swift
//  Calendar
//
//  Created by 최현진 on 2018. 11. 3..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit

class DailyButton : UIButton{
    
    func setDay(date: Int){
        if date > 0 {
            self.titleLabel?.text = String(describing: date)
        }
        else{
            self.titleLabel?.text = ""
        }
    }
}

