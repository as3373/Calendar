//
//  MonthlyButton.swift
//  Calendar
//
//  Created by 최현진 on 2018. 11. 3..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit

class MonthlyButton : UIButton{
    
    func setDay(date: Int){
        if date > 0 {
            self.setTitle(String(describing: date), for: UIControlState(rawValue: 0))
            self.titleLabel?.font = self.titleLabel?.font.withSize(20)
        }
        else{
            self.setTitle("", for: UIControlState(rawValue: 0))
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addTarget(self, action:#selector(self.pressed(sender:)), for: UIControlEvents.touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        self.addTarget(self, action:#selector(self.pressed(sender:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func pressed(sender : MonthlyButton){
//        if UserDefaults.standard.object(forKey: "selectedButton") != nil{
//            let tempButton : DailyButton = UserDefaults.standard.object(forKey: "selectedButton") as! DailyButton
//            tempButton.isSelected = false
//        }
//        UserDefaults.standard.set(sender, forKey: "selectedButton")
//        sender.isSelected = true
    }
}

