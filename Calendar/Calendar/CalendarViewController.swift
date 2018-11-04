//
//  CalendarViewController.swift
//  Calendar
//
//  Created by 최현진 on 2018. 10. 31..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit

class CalendarViewController : UIViewController{
    
    var year = 0,month=0,day=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getSelectedDate()
    }
    
    func setSelectedDate(year:Int, month:Int, day:Int){
        let user = UserDefaults.standard
        user.set(year, forKey: "selectedYear")
        user.set(month, forKey: "selectedMonth")
        user.set(day, forKey: "selectedDay")
    }
    
    func getSelectedDate(){
        let user = UserDefaults.standard
        year = user.integer(forKey: "selectedYear")
        month = user.integer(forKey: "selectedMonth")
        day = user.integer(forKey: "selectedDay")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

