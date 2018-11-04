//
//  AddScheduleView.swift
//  Calendar
//
//  Created by 최현진 on 2018. 10. 30..
//  Copyright © 2018년 최현진. All rights reserved.
//

import UIKit
import CoreData

class AddScheduleViewController : UITableViewController{
    
    @IBOutlet var cancelButton : UIBarButtonItem?
    @IBOutlet var doneButton : UIBarButtonItem?
    @IBOutlet var scheduleName : UILabel?
    @IBOutlet var start : UIDatePicker?
    @IBOutlet var end : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done(){
        self.saveData()
        self.dismiss(animated: true, completion: nil)
    }
    
    func saveData(){
        var appDel : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        var context :NSManagedObjectContext = appDel.
    }
}
