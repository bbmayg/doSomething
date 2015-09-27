//
//  NewTaskViewController.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    @IBOutlet var task: UITextField!
    @IBOutlet var amount: UITextField!
    @IBOutlet var details: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createTask(sender: AnyObject) {
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle)
        taskManager.addTask(task.text!, amount: amount.text!, details: details.text!, timeStamp: timestamp)
        self.view.endEditing(true)
        // Switch back to home screen
        print(tabBarController)
        tabBarController?.selectedIndex = 0
    }
    
}