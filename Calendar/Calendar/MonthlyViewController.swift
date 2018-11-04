//
//  FirstViewController.swift
//  Calendar
//
//  Created by 최현진 on 2018. 10. 30..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit

class MonthlyViewController: CalendarViewController {
    
    @IBOutlet var navigation:UINavigationBar?
    @IBOutlet var previousButton : UIBarButtonItem?
    @IBOutlet var nextButton : UIBarButtonItem?
    
    @IBOutlet var week1 : WeeklyStackView?
    @IBOutlet var week2 : WeeklyStackView?
    @IBOutlet var week3 : WeeklyStackView?
    @IBOutlet var week4 : WeeklyStackView?
    @IBOutlet var week5 : WeeklyStackView?
    @IBOutlet var week6 : WeeklyStackView?
    
    var days : Array<MonthlyButton> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupWeeks()
        setCalendar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupWeeks(){
        var res = week1?.setup()
        for var butn in res!{
            days.append(butn)
        }
        res = week2?.setup()
        for var butn in res!{
            days.append(butn)
        }
        res = week3?.setup()
        for var butn in res!{
            days.append(butn)
        }
        res = week4?.setup()
        for var butn in res!{
            days.append(butn)
        }
        res = week5?.setup()
        for var butn in res!{
            days.append(butn)
        }
        res = week6?.setup()
        for var butn in res!{
            days.append(butn)
        }
    }
    
    func setCalendar(){
        self.getSelectedDate()
//        타이틀 변경
        navigation?.topItem?.title = String(self.year)+"."+String(self.month)
        
//        날짜 변경
        let cal = Calendar(identifier: .gregorian)
        var firstDay = DateComponents(calendar: cal, year: year, month: month, day: 1).date
        var dateComp = cal.dateComponents([.year, .month, .day, .weekday], from: firstDay!)
        week1?.setDates(firstDay: dateComp)
        let weekday = cal.dateComponents([.weekday], from: firstDay!).weekday
        
        firstDay = DateComponents(calendar: cal, year: year, month: month, day: dateComp.day!+8-weekday!).date
        dateComp = cal.dateComponents([.year, .month, .day], from: firstDay!)
        week2?.setDates(firstDay: dateComp)
        
        firstDay = DateComponents(calendar: cal, year: year, month: month, day: dateComp.day!+7).date
        dateComp = cal.dateComponents([.year, .month, .day], from: firstDay!)
        week3?.setDates(firstDay: dateComp)
        
        firstDay = DateComponents(calendar: cal, year: year, month: month, day: dateComp.day!+7).date
        dateComp = cal.dateComponents([.year, .month, .day], from: firstDay!)
        week4?.setDates(firstDay: dateComp)
        
        firstDay = DateComponents(calendar: cal, year: year, month: month, day: dateComp.day!+7).date
        dateComp = cal.dateComponents([.year, .month, .day], from: firstDay!)
        week5?.setDates(firstDay: dateComp)
        
        firstDay = DateComponents(calendar: cal, year: year, month: month, day: dateComp.day!+7).date
        dateComp = cal.dateComponents([.year, .month, .day], from: firstDay!)
        week6?.setDates(firstDay: dateComp)
        
    }
    
    @IBAction func gotoNextMonth(){
        month = month+1
        if month > 12 {
            month = month-12
            year = year + 1
        }
        self.setSelectedDate(year: year,month: month,day: day)
        self.setCalendar()
    }
    
    @IBAction func gotoPreMonth(){
        month = month-1
        if month < 1 {
            month = month+12
            year = year - 1
        }
        self.setSelectedDate(year: year,month: month,day: day)
        self.setCalendar()
    }
}

