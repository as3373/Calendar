//
//  WeeklyStackView.swift
//  Calendar
//
//  Created by 최현진 on 2018. 11. 2..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit

class WeeklyStackView : UIStackView{
    @IBOutlet var sun : MonthlyButton?
    @IBOutlet var mon : MonthlyButton?
    @IBOutlet var tue : MonthlyButton?
    @IBOutlet var wed : MonthlyButton?
    @IBOutlet var thu : MonthlyButton?
    @IBOutlet var fri : MonthlyButton?
    @IBOutlet var sat : MonthlyButton?
    
    var days : Array<MonthlyButton> = []
    
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    required init(coder: NSCoder) {
        super.init(coder : coder)
    }
    
    func setup()->Array<MonthlyButton>{
        days.append(sun!)
        days.append(mon!)
        days.append(tue!)
        days.append(wed!)
        days.append(thu!)
        days.append(fri!)
        days.append(sat!)
        return days
    }
    
    func setDates(firstDay : DateComponents){
        let standardMonth = UserDefaults.standard.integer(forKey: "selectedMonth")
        let calendar = Calendar(identifier: .gregorian)
        let weekday = firstDay.weekday
        var day = firstDay
        for i in 0..<weekday!-1{
            let button = days[i]
            button.setDay(date: 0)
        }
        for i in weekday!-1..<days.count{
            let button = days[i]
            if standardMonth != day.month {
                button.setDay(date:0)
            }else{
                button.setDay(date:day.day!)
            }
            let date = DateComponents(calendar: calendar, year: day.year, month: day.month, day: day.day!+1).date
            day = calendar.dateComponents([.year, .month, .day], from: date!)
            
        }
    }
}

