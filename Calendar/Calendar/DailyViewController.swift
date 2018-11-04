//
//  DailyViewController.swift
//  Calendar
//
//  Created by 최현진 on 2018. 10. 31..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit

class DailyViewController: CalendarViewController {
    
    @IBOutlet var navigation:UINavigationBar?
    @IBOutlet var previousButton : UIBarButtonItem?
    @IBOutlet var nextButton : UIBarButtonItem?
    @IBOutlet var tableView : DailyTableView?
    
    @IBAction func gotoNextDay(){
        month = month+1
        if month > 12 {
            month = month-12
            year = year + 1
        }
        self.setSelectedDate(year: year,month: month,day: day)
        self.setCalendar()
    }
    
    @IBAction func gotoPreDay(){
        month = month-1
        if month < 1 {
            month = month+12
            year = year - 1
        }
        self.setSelectedDate(year: year,month: month,day: day)
        self.setCalendar()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigation?.topItem?.title = String(self.year)+"."+String(self.month)+"."+String(self.day)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func setCalendar(){
        
        self.getSelectedDate()
        //        타이틀 변경
        navigation?.topItem?.title = String(self.year)+"."+String(self.month)
    }
}
